
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union scu_remote_node_context {int dummy; } scu_remote_node_context ;
typedef size_t u16 ;
struct isci_host {size_t remote_node_entries; union scu_remote_node_context* remote_node_context_table; scalar_t__* device_table; } ;



__attribute__((used)) static union scu_remote_node_context *sci_rnc_by_id(struct isci_host *ihost, u16 id)
{
 if (id < ihost->remote_node_entries &&
     ihost->device_table[id])
  return &ihost->remote_node_context_table[id];

 return ((void*)0);
}
