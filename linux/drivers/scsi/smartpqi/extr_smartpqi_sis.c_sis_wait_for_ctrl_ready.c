
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int SIS_CTRL_READY_TIMEOUT_SECS ;
 int sis_wait_for_ctrl_ready_with_timeout (struct pqi_ctrl_info*,int ) ;

int sis_wait_for_ctrl_ready(struct pqi_ctrl_info *ctrl_info)
{
 return sis_wait_for_ctrl_ready_with_timeout(ctrl_info,
  SIS_CTRL_READY_TIMEOUT_SECS);
}
