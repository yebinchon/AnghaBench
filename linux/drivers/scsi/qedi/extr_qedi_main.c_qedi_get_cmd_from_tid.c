
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct qedi_ctx {TYPE_1__* itt_map; } ;
struct qedi_cmd {size_t task_id; } ;
struct TYPE_2__ {struct qedi_cmd* p_cmd; } ;


 size_t MAX_ISCSI_TASK_ENTRIES ;

struct qedi_cmd *qedi_get_cmd_from_tid(struct qedi_ctx *qedi, u32 tid)
{
 struct qedi_cmd *cmd = ((void*)0);

 if (tid >= MAX_ISCSI_TASK_ENTRIES)
  return ((void*)0);

 cmd = qedi->itt_map[tid].p_cmd;
 if (cmd->task_id != tid)
  return ((void*)0);

 qedi->itt_map[tid].p_cmd = ((void*)0);

 return cmd;
}
