
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pqi_ctrl_info {TYPE_1__* registers; } ;
struct TYPE_2__ {int sis_host_to_ctrl_doorbell; } ;


 int SIS_SOFT_RESET ;
 int writel (int ,int *) ;

void sis_soft_reset(struct pqi_ctrl_info *ctrl_info)
{
 writel(SIS_SOFT_RESET,
  &ctrl_info->registers->sis_host_to_ctrl_doorbell);
}
