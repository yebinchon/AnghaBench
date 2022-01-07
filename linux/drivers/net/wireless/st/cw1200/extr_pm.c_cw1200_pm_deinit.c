
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cw1200_pm_state {int stay_awake; } ;


 int del_timer_sync (int *) ;

void cw1200_pm_deinit(struct cw1200_pm_state *pm)
{
 del_timer_sync(&pm->stay_awake);
}
