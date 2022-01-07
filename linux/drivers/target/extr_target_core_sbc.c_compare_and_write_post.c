
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int caw_sem; } ;
struct se_cmd {scalar_t__ scsi_status; int t_state_lock; struct se_device* se_dev; } ;
typedef int sense_reason_t ;


 scalar_t__ SAM_STAT_CHECK_CONDITION ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int TCM_NO_SENSE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int up (int *) ;

__attribute__((used)) static sense_reason_t compare_and_write_post(struct se_cmd *cmd, bool success,
          int *post_ret)
{
 struct se_device *dev = cmd->se_dev;
 sense_reason_t ret = TCM_NO_SENSE;

 spin_lock_irq(&cmd->t_state_lock);
 if (success) {
  *post_ret = 1;

  if (cmd->scsi_status == SAM_STAT_CHECK_CONDITION)
   ret = TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
 }
 spin_unlock_irq(&cmd->t_state_lock);





 up(&dev->caw_sem);

 return ret;
}
