
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {scalar_t__ controller_online; } ;


 int pqi_take_ctrl_offline (struct pqi_ctrl_info*) ;
 int sis_is_firmware_running (struct pqi_ctrl_info*) ;

__attribute__((used)) static inline void pqi_check_ctrl_health(struct pqi_ctrl_info *ctrl_info)
{
 if (ctrl_info->controller_online)
  if (!sis_is_firmware_running(ctrl_info))
   pqi_take_ctrl_offline(ctrl_info);
}
