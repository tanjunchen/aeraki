#!/bin/bash

# Copyright Aeraki Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -e
set -x

if [ -z "$AERAKI_NAMESPACE" ]; then
  export AERAKI_NAMESPACE="istio-system"
fi

kubectl --kubeconfig=/Users/chentanjun/.kube/all_kubeconfig/gz-offline.config delete -f k8s/aeraki.yaml || true
kubectl --kubeconfig=/Users/chentanjun/.kube/all_kubeconfig/gz-offline.config delete -f k8s/crd.yaml || true
