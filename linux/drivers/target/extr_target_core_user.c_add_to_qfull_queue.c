
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmu_dev {unsigned int qfull_time_out; int cmd_time_out; int name; int qfull_queue; int qfull_timer; } ;
struct tcmu_cmd {int cmd_id; int queue_entry; struct tcmu_dev* tcmu_dev; } ;


 int ETIMEDOUT ;
 unsigned int TCMU_TIME_OUT ;
 int list_add_tail (int *,int *) ;
 int pr_debug (char*,int ,int ) ;
 int tcmu_setup_cmd_timer (struct tcmu_cmd*,unsigned int,int *) ;

__attribute__((used)) static int add_to_qfull_queue(struct tcmu_cmd *tcmu_cmd)
{
 struct tcmu_dev *udev = tcmu_cmd->tcmu_dev;
 unsigned int tmo;
 int ret;





 if (!udev->qfull_time_out)
  return -ETIMEDOUT;
 else if (udev->qfull_time_out > 0)
  tmo = udev->qfull_time_out;
 else if (udev->cmd_time_out)
  tmo = udev->cmd_time_out;
 else
  tmo = TCMU_TIME_OUT;

 ret = tcmu_setup_cmd_timer(tcmu_cmd, tmo, &udev->qfull_timer);
 if (ret)
  return ret;

 list_add_tail(&tcmu_cmd->queue_entry, &udev->qfull_queue);
 pr_debug("adding cmd %u on dev %s to ring space wait queue\n",
   tcmu_cmd->cmd_id, udev->name);
 return 0;
}
