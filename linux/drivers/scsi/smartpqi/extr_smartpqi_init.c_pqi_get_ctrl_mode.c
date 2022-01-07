
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
typedef enum pqi_ctrl_mode { ____Placeholder_pqi_ctrl_mode } pqi_ctrl_mode ;


 int sis_read_driver_scratch (struct pqi_ctrl_info*) ;

__attribute__((used)) static inline enum pqi_ctrl_mode pqi_get_ctrl_mode(
 struct pqi_ctrl_info *ctrl_info)
{
 return sis_read_driver_scratch(ctrl_info);
}
