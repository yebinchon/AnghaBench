
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltc2952_poweroff {int wde_interval; int timer_wde; } ;


 int HRTIMER_MODE_REL ;
 int hrtimer_start (int *,int ,int ) ;

__attribute__((used)) static void ltc2952_poweroff_start_wde(struct ltc2952_poweroff *data)
{
 hrtimer_start(&data->timer_wde, data->wde_interval, HRTIMER_MODE_REL);
}
