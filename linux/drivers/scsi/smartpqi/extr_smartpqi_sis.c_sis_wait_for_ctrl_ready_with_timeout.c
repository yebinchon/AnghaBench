
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pqi_ctrl_info {TYPE_1__* pci_dev; TYPE_2__* registers; } ;
struct TYPE_4__ {int * sis_mailbox; int sis_firmware_status; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;
 int ETIMEDOUT ;
 unsigned int PQI_HZ ;
 int SIS_CTRL_KERNEL_PANIC ;
 int SIS_CTRL_KERNEL_UP ;
 int SIS_CTRL_READY_POLL_INTERVAL_MSECS ;
 int dev_err (int *,char*,unsigned int) ;
 unsigned int jiffies ;
 int msleep (int ) ;
 unsigned int readl (int *) ;
 scalar_t__ time_after (unsigned int,unsigned long) ;

__attribute__((used)) static int sis_wait_for_ctrl_ready_with_timeout(struct pqi_ctrl_info *ctrl_info,
 unsigned int timeout_secs)
{
 unsigned long timeout;
 u32 status;

 timeout = (timeout_secs * PQI_HZ) + jiffies;

 while (1) {
  status = readl(&ctrl_info->registers->sis_firmware_status);
  if (status != ~0) {
   if (status & SIS_CTRL_KERNEL_PANIC) {
    dev_err(&ctrl_info->pci_dev->dev,
     "controller is offline: status code 0x%x\n",
     readl(
     &ctrl_info->registers->sis_mailbox[7]));
    return -ENODEV;
   }
   if (status & SIS_CTRL_KERNEL_UP)
    break;
  }
  if (time_after(jiffies, timeout)) {
   dev_err(&ctrl_info->pci_dev->dev,
    "controller not ready after %u seconds\n",
    timeout_secs);
   return -ETIMEDOUT;
  }
  msleep(SIS_CTRL_READY_POLL_INTERVAL_MSECS);
 }

 return 0;
}
