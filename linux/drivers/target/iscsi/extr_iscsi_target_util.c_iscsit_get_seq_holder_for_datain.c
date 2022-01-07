
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct iscsi_seq {size_t seq_send_order; } ;
struct iscsi_cmd {size_t seq_count; struct iscsi_seq* seq_list; } ;



struct iscsi_seq *iscsit_get_seq_holder_for_datain(
 struct iscsi_cmd *cmd,
 u32 seq_send_order)
{
 u32 i;

 for (i = 0; i < cmd->seq_count; i++)
  if (cmd->seq_list[i].seq_send_order == seq_send_order)
   return &cmd->seq_list[i];

 return ((void*)0);
}
