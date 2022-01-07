
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum uic_link_state { ____Placeholder_uic_link_state } uic_link_state ;
typedef enum ufs_pm_level { ____Placeholder_ufs_pm_level } ufs_pm_level ;
struct TYPE_2__ {int link_state; } ;


 TYPE_1__* ufs_pm_lvl_states ;

__attribute__((used)) static inline enum uic_link_state
ufs_get_pm_lvl_to_link_pwr_state(enum ufs_pm_level lvl)
{
 return ufs_pm_lvl_states[lvl].link_state;
}
