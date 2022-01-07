
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iscsi_session {int max_cmd_sn; } ;
struct iscsi_cmd {int maxcmdsn_inc; scalar_t__ immediate_cmd; } ;


 int atomic_inc_return (int *) ;
 int pr_debug (char*,int ) ;

void iscsit_increment_maxcmdsn(struct iscsi_cmd *cmd, struct iscsi_session *sess)
{
 u32 max_cmd_sn;

 if (cmd->immediate_cmd || cmd->maxcmdsn_inc)
  return;

 cmd->maxcmdsn_inc = 1;

 max_cmd_sn = atomic_inc_return(&sess->max_cmd_sn);
 pr_debug("Updated MaxCmdSN to 0x%08x\n", max_cmd_sn);
}
