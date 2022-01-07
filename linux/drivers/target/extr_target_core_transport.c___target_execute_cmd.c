
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_cmd {int t_state_lock; int transport_state; scalar_t__ (* execute_cmd ) (struct se_cmd*) ;int scsi_status; } ;
typedef scalar_t__ sense_reason_t ;


 int CMD_T_SENT ;
 int SAM_STAT_RESERVATION_CONFLICT ;
 scalar_t__ TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct se_cmd*) ;
 scalar_t__ target_alua_state_check (struct se_cmd*) ;
 scalar_t__ target_check_reservation (struct se_cmd*) ;
 scalar_t__ target_scsi3_ua_check (struct se_cmd*) ;
 int transport_generic_request_failure (struct se_cmd*,scalar_t__) ;

void __target_execute_cmd(struct se_cmd *cmd, bool do_checks)
{
 sense_reason_t ret;

 if (!cmd->execute_cmd) {
  ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
  goto err;
 }
 if (do_checks) {






  ret = target_scsi3_ua_check(cmd);
  if (ret)
   goto err;

  ret = target_alua_state_check(cmd);
  if (ret)
   goto err;

  ret = target_check_reservation(cmd);
  if (ret) {
   cmd->scsi_status = SAM_STAT_RESERVATION_CONFLICT;
   goto err;
  }
 }

 ret = cmd->execute_cmd(cmd);
 if (!ret)
  return;
err:
 spin_lock_irq(&cmd->t_state_lock);
 cmd->transport_state &= ~CMD_T_SENT;
 spin_unlock_irq(&cmd->t_state_lock);

 transport_generic_request_failure(cmd, ret);
}
