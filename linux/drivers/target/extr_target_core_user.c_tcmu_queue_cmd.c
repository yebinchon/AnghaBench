
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {int cmdr_lock; } ;
struct tcmu_cmd {int dummy; } ;
struct se_device {int dummy; } ;
struct se_cmd {struct se_device* se_dev; } ;
typedef int sense_reason_t ;


 struct tcmu_dev* TCMU_DEV (struct se_device*) ;
 int TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_cmd_ring (struct tcmu_cmd*,int *) ;
 struct tcmu_cmd* tcmu_alloc_cmd (struct se_cmd*) ;
 int tcmu_free_cmd (struct tcmu_cmd*) ;

__attribute__((used)) static sense_reason_t
tcmu_queue_cmd(struct se_cmd *se_cmd)
{
 struct se_device *se_dev = se_cmd->se_dev;
 struct tcmu_dev *udev = TCMU_DEV(se_dev);
 struct tcmu_cmd *tcmu_cmd;
 sense_reason_t scsi_ret;
 int ret;

 tcmu_cmd = tcmu_alloc_cmd(se_cmd);
 if (!tcmu_cmd)
  return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;

 mutex_lock(&udev->cmdr_lock);
 ret = queue_cmd_ring(tcmu_cmd, &scsi_ret);
 mutex_unlock(&udev->cmdr_lock);
 if (ret < 0)
  tcmu_free_cmd(tcmu_cmd);
 return scsi_ret;
}
