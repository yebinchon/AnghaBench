
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;
typedef enum ufs_pm_level { ____Placeholder_ufs_pm_level } ufs_pm_level ;
typedef enum ufs_dev_pwr_mode { ____Placeholder_ufs_dev_pwr_mode } ufs_dev_pwr_mode ;
struct TYPE_2__ {int dev_state; int link_state; } ;


 int UFS_PM_LVL_0 ;
 int UFS_PM_LVL_MAX ;
 TYPE_1__* ufs_pm_lvl_states ;

__attribute__((used)) static inline enum ufs_pm_level
ufs_get_desired_pm_lvl_for_dev_link_state(enum ufs_dev_pwr_mode dev_state,
     enum uic_link_state link_state)
{
 enum ufs_pm_level lvl;

 for (lvl = UFS_PM_LVL_0; lvl < UFS_PM_LVL_MAX; lvl++) {
  if ((ufs_pm_lvl_states[lvl].dev_state == dev_state) &&
   (ufs_pm_lvl_states[lvl].link_state == link_state))
   return lvl;
 }


 return UFS_PM_LVL_0;
}
