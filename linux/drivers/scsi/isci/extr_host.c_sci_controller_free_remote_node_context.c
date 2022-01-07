
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef size_t u16 ;
struct isci_remote_device {int dummy; } ;
struct isci_host {int available_remote_nodes; struct isci_remote_device** device_table; } ;


 int sci_remote_device_node_count (struct isci_remote_device*) ;
 int sci_remote_node_table_release_remote_node_index (int *,int ,size_t) ;

void sci_controller_free_remote_node_context(struct isci_host *ihost,
          struct isci_remote_device *idev,
          u16 node_id)
{
 u32 remote_node_count = sci_remote_device_node_count(idev);

 if (ihost->device_table[node_id] == idev) {
  ihost->device_table[node_id] = ((void*)0);

  sci_remote_node_table_release_remote_node_index(
   &ihost->available_remote_nodes, remote_node_count, node_id
   );
 }
}
