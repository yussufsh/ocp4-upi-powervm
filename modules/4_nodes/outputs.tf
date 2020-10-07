################################################################
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Licensed Materials - Property of IBM
#
# ©Copyright IBM Corp. 2020
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
################################################################

output "bootstrap_ip" {
    value = join("", openstack_compute_instance_v2.bootstrap.*.access_ip_v4)
}

output "master_ips" {
    value = openstack_compute_instance_v2.master.*.access_ip_v4
}

output "worker_ips" {
    value = openstack_compute_instance_v2.worker.*.access_ip_v4
}
