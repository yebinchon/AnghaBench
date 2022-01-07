
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int safety_timer_expired; } ;
struct abx500_chargalg {TYPE_1__ events; int safety_timer; } ;


 scalar_t__ hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static void abx500_chargalg_stop_safety_timer(struct abx500_chargalg *di)
{
 if (hrtimer_try_to_cancel(&di->safety_timer) >= 0)
  di->events.safety_timer_expired = 0;
}
