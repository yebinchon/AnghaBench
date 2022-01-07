
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int restart_nb; } ;


 int msm_ps_hold_restart (int *,int ,int *) ;
 TYPE_1__* poweroff_pctrl ;

__attribute__((used)) static void msm_ps_hold_poweroff(void)
{
 msm_ps_hold_restart(&poweroff_pctrl->restart_nb, 0, ((void*)0));
}
