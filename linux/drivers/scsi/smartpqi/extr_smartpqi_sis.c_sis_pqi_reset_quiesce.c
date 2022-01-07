
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int SIS_PQI_RESET_QUIESCE ;
 int sis_set_doorbell_bit (struct pqi_ctrl_info*,int ) ;

int sis_pqi_reset_quiesce(struct pqi_ctrl_info *ctrl_info)
{
 return sis_set_doorbell_bit(ctrl_info, SIS_PQI_RESET_QUIESCE);
}
