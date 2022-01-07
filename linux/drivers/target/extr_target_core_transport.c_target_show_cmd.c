
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct se_tmr_req {int ref_task_tag; int function; } ;
struct se_cmd {int se_cmd_flags; int cmd_kref; int t_state; TYPE_1__* se_tfo; int tag; int data_length; int data_direction; struct se_tmr_req* se_tmr_req; int * t_task_cdb; int transport_state; } ;
struct TYPE_2__ {int (* get_cmd_state ) (struct se_cmd*) ;} ;


 int SCF_SCSI_TMR_CDB ;
 int cmd_state_name (int ) ;
 int data_dir_name (int ) ;
 int kfree (char*) ;
 int kref_read (int *) ;
 int pr_debug (char*,char const*,int ,int ,int ,int ,int ,int ,char*,...) ;
 int stub1 (struct se_cmd*) ;
 int stub2 (struct se_cmd*) ;
 int target_tmf_name (int ) ;
 char* target_ts_to_str (int ) ;

void target_show_cmd(const char *pfx, struct se_cmd *cmd)
{
 char *ts_str = target_ts_to_str(cmd->transport_state);
 const u8 *cdb = cmd->t_task_cdb;
 struct se_tmr_req *tmf = cmd->se_tmr_req;

 if (!(cmd->se_cmd_flags & SCF_SCSI_TMR_CDB)) {
  pr_debug("%scmd %#02x:%#02x with tag %#llx dir %s i_state %d t_state %s len %d refcnt %d transport_state %s\n",
    pfx, cdb[0], cdb[1], cmd->tag,
    data_dir_name(cmd->data_direction),
    cmd->se_tfo->get_cmd_state(cmd),
    cmd_state_name(cmd->t_state), cmd->data_length,
    kref_read(&cmd->cmd_kref), ts_str);
 } else {
  pr_debug("%stmf %s with tag %#llx ref_task_tag %#llx i_state %d t_state %s refcnt %d transport_state %s\n",
    pfx, target_tmf_name(tmf->function), cmd->tag,
    tmf->ref_task_tag, cmd->se_tfo->get_cmd_state(cmd),
    cmd_state_name(cmd->t_state),
    kref_read(&cmd->cmd_kref), ts_str);
 }
 kfree(ts_str);
}
