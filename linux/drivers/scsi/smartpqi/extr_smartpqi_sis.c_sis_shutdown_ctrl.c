
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {TYPE_1__* registers; } ;
struct TYPE_2__ {int sis_host_to_ctrl_doorbell; int sis_firmware_status; } ;


 int SIS_CTRL_KERNEL_PANIC ;
 int SIS_TRIGGER_SHUTDOWN ;
 int readl (int *) ;
 int writel (int ,int *) ;

void sis_shutdown_ctrl(struct pqi_ctrl_info *ctrl_info)
{
 if (readl(&ctrl_info->registers->sis_firmware_status) &
  SIS_CTRL_KERNEL_PANIC)
  return;

 writel(SIS_TRIGGER_SHUTDOWN,
  &ctrl_info->registers->sis_host_to_ctrl_doorbell);
}
