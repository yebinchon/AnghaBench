
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sci_remote_node_table {int available_nodes_array_size; int* available_remote_nodes; } ;


 int BUG_ON (int) ;
 int SCIC_SDS_REMOTE_NODES_PER_DWORD ;
 int SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD ;
 int SCU_STP_REMOTE_NODE_COUNT ;

__attribute__((used)) static void sci_remote_node_table_set_node_index(
 struct sci_remote_node_table *remote_node_table,
 u32 remote_node_index)
{
 u32 dword_location;
 u32 dword_remainder;
 u32 slot_normalized;
 u32 slot_position;

 BUG_ON(
  (remote_node_table->available_nodes_array_size * SCIC_SDS_REMOTE_NODE_SETS_PER_DWORD)
  <= (remote_node_index / SCU_STP_REMOTE_NODE_COUNT)
  );

 dword_location = remote_node_index / SCIC_SDS_REMOTE_NODES_PER_DWORD;
 dword_remainder = remote_node_index % SCIC_SDS_REMOTE_NODES_PER_DWORD;
 slot_normalized = (dword_remainder / SCU_STP_REMOTE_NODE_COUNT) * sizeof(u32);
 slot_position = remote_node_index % SCU_STP_REMOTE_NODE_COUNT;

 remote_node_table->available_remote_nodes[dword_location] |=
  1 << (slot_normalized + slot_position);
}
