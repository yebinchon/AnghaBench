
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int PQI_POST_RESET_DELAY_B4_MSGU_READY ;
 int msleep (int ) ;
 int pqi_ctrl_init_resume (struct pqi_ctrl_info*) ;

__attribute__((used)) static int pqi_ofa_ctrl_restart(struct pqi_ctrl_info *ctrl_info)
{
 msleep(PQI_POST_RESET_DELAY_B4_MSGU_READY);
 return pqi_ctrl_init_resume(ctrl_info);
}
