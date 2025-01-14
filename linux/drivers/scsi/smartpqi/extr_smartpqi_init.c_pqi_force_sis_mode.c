
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;


 int ENXIO ;
 scalar_t__ SIS_MODE ;
 scalar_t__ pqi_get_ctrl_mode (struct pqi_ctrl_info*) ;
 int pqi_revert_to_sis_mode (struct pqi_ctrl_info*) ;
 int pqi_save_ctrl_mode (struct pqi_ctrl_info*,scalar_t__) ;
 int sis_is_firmware_running (struct pqi_ctrl_info*) ;
 scalar_t__ sis_is_kernel_up (struct pqi_ctrl_info*) ;

__attribute__((used)) static int pqi_force_sis_mode(struct pqi_ctrl_info *ctrl_info)
{
 if (!sis_is_firmware_running(ctrl_info))
  return -ENXIO;

 if (pqi_get_ctrl_mode(ctrl_info) == SIS_MODE)
  return 0;

 if (sis_is_kernel_up(ctrl_info)) {
  pqi_save_ctrl_mode(ctrl_info, SIS_MODE);
  return 0;
 }

 return pqi_revert_to_sis_mode(ctrl_info);
}
