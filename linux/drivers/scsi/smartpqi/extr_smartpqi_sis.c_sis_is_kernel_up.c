
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {TYPE_1__* registers; } ;
struct TYPE_2__ {int sis_firmware_status; } ;


 int SIS_CTRL_KERNEL_UP ;
 int readl (int *) ;

bool sis_is_kernel_up(struct pqi_ctrl_info *ctrl_info)
{
 return readl(&ctrl_info->registers->sis_firmware_status) &
    SIS_CTRL_KERNEL_UP;
}
