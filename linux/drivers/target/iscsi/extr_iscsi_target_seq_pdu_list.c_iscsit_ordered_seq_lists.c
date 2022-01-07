
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct iscsi_cmd {size_t seq_count; TYPE_1__* seq_list; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ seq_send_order; } ;


 scalar_t__ SEQTYPE_NORMAL ;

__attribute__((used)) static void iscsit_ordered_seq_lists(
 struct iscsi_cmd *cmd,
 u8 type)
{
 u32 i, seq_count = 0;

 for (i = 0; i < cmd->seq_count; i++) {
  if (cmd->seq_list[i].type != SEQTYPE_NORMAL)
   continue;
  cmd->seq_list[i].seq_send_order = seq_count++;
 }
}
