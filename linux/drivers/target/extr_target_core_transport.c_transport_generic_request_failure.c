
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct se_cmd {int transport_state; TYPE_4__* se_dev; TYPE_3__* se_tfo; int * t_task_cdb; int orig_fe_lun; TYPE_2__* se_sess; int scsi_status; int work; int (* transport_complete_callback ) (struct se_cmd*,int,int*) ;} ;
typedef int sense_reason_t ;
struct TYPE_5__ {int emulate_ua_intlck_ctrl; } ;
struct TYPE_8__ {TYPE_1__ dev_attrib; } ;
struct TYPE_7__ {int (* queue_status ) (struct se_cmd*) ;} ;
struct TYPE_6__ {int se_node_acl; } ;


 int ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS ;
 int CMD_T_ABORTED ;
 int INIT_WORK (int *,int ) ;
 int SAM_STAT_BUSY ;
 int SAM_STAT_RESERVATION_CONFLICT ;
 int SAM_STAT_TASK_SET_FULL ;
 int pr_debug (char*,int) ;
 int pr_err (char*,int ,int) ;
 int queue_work (int ,int *) ;
 int stub1 (struct se_cmd*,int,int*) ;
 int stub2 (struct se_cmd*) ;
 int target_abort_work ;
 int target_completion_wq ;
 int target_show_cmd (char*,struct se_cmd*) ;
 int target_ua_allocate_lun (int ,int ,int,int ) ;
 int trace_target_cmd_complete (struct se_cmd*) ;
 int transport_cmd_check_stop_to_fabric (struct se_cmd*) ;
 int transport_complete_task_attr (struct se_cmd*) ;
 int transport_handle_queue_full (struct se_cmd*,TYPE_4__*,int,int) ;
 int transport_send_check_condition_and_sense (struct se_cmd*,int,int ) ;

void transport_generic_request_failure(struct se_cmd *cmd,
  sense_reason_t sense_reason)
{
 int ret = 0, post_ret;

 pr_debug("-----[ Storage Engine Exception; sense_reason %d\n",
   sense_reason);
 target_show_cmd("-----[ ", cmd);




 transport_complete_task_attr(cmd);

 if (cmd->transport_complete_callback)
  cmd->transport_complete_callback(cmd, 0, &post_ret);

 if (cmd->transport_state & CMD_T_ABORTED) {
  INIT_WORK(&cmd->work, target_abort_work);
  queue_work(target_completion_wq, &cmd->work);
  return;
 }

 switch (sense_reason) {
 case 138:
 case 131:
 case 145:
 case 144:
 case 136:
 case 140:
 case 132:
 case 128:
 case 150:
 case 149:
 case 147:
 case 148:
 case 142:
 case 143:
 case 141:
 case 146:
 case 133:
 case 129:
 case 134:
 case 130:
  break;
 case 137:
  cmd->scsi_status = SAM_STAT_TASK_SET_FULL;
  goto queue_status;
 case 139:
  cmd->scsi_status = SAM_STAT_BUSY;
  goto queue_status;
 case 135:






  cmd->scsi_status = SAM_STAT_RESERVATION_CONFLICT;







  if (cmd->se_sess &&
      cmd->se_dev->dev_attrib.emulate_ua_intlck_ctrl == 2) {
   target_ua_allocate_lun(cmd->se_sess->se_node_acl,
            cmd->orig_fe_lun, 0x2C,
     ASCQ_2CH_PREVIOUS_RESERVATION_CONFLICT_STATUS);
  }

  goto queue_status;
 default:
  pr_err("Unknown transport error for CDB 0x%02x: %d\n",
   cmd->t_task_cdb[0], sense_reason);
  sense_reason = 131;
  break;
 }

 ret = transport_send_check_condition_and_sense(cmd, sense_reason, 0);
 if (ret)
  goto queue_full;

check_stop:
 transport_cmd_check_stop_to_fabric(cmd);
 return;

queue_status:
 trace_target_cmd_complete(cmd);
 ret = cmd->se_tfo->queue_status(cmd);
 if (!ret)
  goto check_stop;
queue_full:
 transport_handle_queue_full(cmd, cmd->se_dev, ret, 0);
}
