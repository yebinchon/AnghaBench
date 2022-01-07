
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int SIS_ENABLE_INTX ;
 int sis_set_doorbell_bit (struct pqi_ctrl_info*,int ) ;

void sis_enable_intx(struct pqi_ctrl_info *ctrl_info)
{
 sis_set_doorbell_bit(ctrl_info, SIS_ENABLE_INTX);
}
