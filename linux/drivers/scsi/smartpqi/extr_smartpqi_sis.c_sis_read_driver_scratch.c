
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pqi_ctrl_info {TYPE_1__* registers; } ;
struct TYPE_2__ {int sis_driver_scratch; } ;


 int readl (int *) ;

u32 sis_read_driver_scratch(struct pqi_ctrl_info *ctrl_info)
{
 return readl(&ctrl_info->registers->sis_driver_scratch);
}
