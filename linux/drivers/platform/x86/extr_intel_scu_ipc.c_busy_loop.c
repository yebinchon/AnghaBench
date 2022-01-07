
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_scu_ipc_dev {int dev; } ;


 int BIT (int) ;
 int EIO ;
 int ETIMEDOUT ;
 int dev_err (int ,char*) ;
 int ipc_read_status (struct intel_scu_ipc_dev*) ;
 int udelay (int) ;

__attribute__((used)) static inline int busy_loop(struct intel_scu_ipc_dev *scu)
{
 u32 status = ipc_read_status(scu);
 u32 loop_count = 100000;


 while ((status & BIT(0)) && --loop_count) {
  udelay(1);
  status = ipc_read_status(scu);
 }

 if (status & BIT(0)) {
  dev_err(scu->dev, "IPC timed out");
  return -ETIMEDOUT;
 }

 if (status & BIT(1))
  return -EIO;

 return 0;
}
