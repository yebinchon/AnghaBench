
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum ufs_pm_level { ____Placeholder_ufs_pm_level } ufs_pm_level ;
typedef enum ufs_dev_pwr_mode { ____Placeholder_ufs_dev_pwr_mode } ufs_dev_pwr_mode ;
struct TYPE_2__ {int dev_state; } ;


 TYPE_1__* ufs_pm_lvl_states ;

__attribute__((used)) static inline enum ufs_dev_pwr_mode
ufs_get_pm_lvl_to_dev_pwr_mode(enum ufs_pm_level lvl)
{
 return ufs_pm_lvl_states[lvl].dev_state;
}
