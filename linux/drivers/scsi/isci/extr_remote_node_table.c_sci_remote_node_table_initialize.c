
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef void* u16 ;
struct sci_remote_node_table {void* group_array_size; void* available_nodes_array_size; int remote_node_groups; int available_remote_nodes; } ;


 int SCIC_SDS_REMOTE_NODES_PER_DWORD ;
 int SCU_STP_REMOTE_NODE_COUNT ;
 int memset (int ,int,int) ;
 int sci_remote_node_table_set_group_index (struct sci_remote_node_table*,int,int) ;
 int sci_remote_node_table_set_node_index (struct sci_remote_node_table*,int) ;

void sci_remote_node_table_initialize(
 struct sci_remote_node_table *remote_node_table,
 u32 remote_node_entries)
{
 u32 index;




 memset(
  remote_node_table->available_remote_nodes,
  0x00,
  sizeof(remote_node_table->available_remote_nodes)
  );

 memset(
  remote_node_table->remote_node_groups,
  0x00,
  sizeof(remote_node_table->remote_node_groups)
  );


 remote_node_table->available_nodes_array_size = (u16)
       (remote_node_entries / SCIC_SDS_REMOTE_NODES_PER_DWORD)
       + ((remote_node_entries % SCIC_SDS_REMOTE_NODES_PER_DWORD) != 0);



 for (index = 0; index < remote_node_entries; index++) {
  sci_remote_node_table_set_node_index(remote_node_table, index);
 }

 remote_node_table->group_array_size = (u16)
           (remote_node_entries / (SCU_STP_REMOTE_NODE_COUNT * 32))
           + ((remote_node_entries % (SCU_STP_REMOTE_NODE_COUNT * 32)) != 0);

 for (index = 0; index < (remote_node_entries / SCU_STP_REMOTE_NODE_COUNT); index++) {



  sci_remote_node_table_set_group_index(remote_node_table, 2, index);
 }


 if ((remote_node_entries % SCU_STP_REMOTE_NODE_COUNT) == 2) {
  sci_remote_node_table_set_group_index(remote_node_table, 1, index);
 } else if ((remote_node_entries % SCU_STP_REMOTE_NODE_COUNT) == 1) {
  sci_remote_node_table_set_group_index(remote_node_table, 0, index);
 }
}
