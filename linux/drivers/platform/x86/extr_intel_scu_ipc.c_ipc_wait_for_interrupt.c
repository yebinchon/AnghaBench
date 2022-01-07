
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_scu_ipc_dev {int dev; int cmd_complete; } ;


 int BIT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int HZ ;
 int dev_err (int ,char*) ;
 int ipc_read_status (struct intel_scu_ipc_dev*) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static inline int ipc_wait_for_interrupt(struct intel_scu_ipc_dev *scu)
{
 int status;

 if (!wait_for_completion_timeout(&scu->cmd_complete, 3 * HZ)) {
  dev_err(scu->dev, "IPC timed out\n");
  return -ETIMEDOUT;
 }

 status = ipc_read_status(scu);
 if (status & BIT(1))
  return -EIO;

 return 0;
}
