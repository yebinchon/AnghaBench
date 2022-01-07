
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pqi_ctrl_info {TYPE_2__* registers; TYPE_1__* pci_dev; } ;
struct TYPE_4__ {int * sis_mailbox; int sis_firmware_status; } ;
struct TYPE_3__ {int dev; } ;


 int SIS_CTRL_KERNEL_PANIC ;
 int dev_err (int *,char*,int) ;
 int readl (int *) ;

bool sis_is_firmware_running(struct pqi_ctrl_info *ctrl_info)
{
 bool running;
 u32 status;

 status = readl(&ctrl_info->registers->sis_firmware_status);

 if (status & SIS_CTRL_KERNEL_PANIC)
  running = 0;
 else
  running = 1;

 if (!running)
  dev_err(&ctrl_info->pci_dev->dev,
   "controller is offline: status code 0x%x\n",
   readl(&ctrl_info->registers->sis_mailbox[7]));

 return running;
}
