
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_ctrl_info {int dummy; } ;
typedef enum pqi_ctrl_mode { ____Placeholder_pqi_ctrl_mode } pqi_ctrl_mode ;


 int sis_write_driver_scratch (struct pqi_ctrl_info*,int) ;

__attribute__((used)) static inline void pqi_save_ctrl_mode(struct pqi_ctrl_info *ctrl_info,
 enum pqi_ctrl_mode mode)
{
 sis_write_driver_scratch(ctrl_info, mode);
}
