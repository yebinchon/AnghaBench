
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int maintenance_timer_expired; } ;
struct abx500_chargalg {int maintenance_timer; TYPE_1__ events; } ;


 int FIVE_MINUTES_IN_SECONDS ;
 int HRTIMER_MODE_REL ;
 int ONE_HOUR_IN_SECONDS ;
 int hrtimer_set_expires_range (int *,int ,int ) ;
 int hrtimer_start_expires (int *,int ) ;
 int ktime_set (int,int ) ;

__attribute__((used)) static void abx500_chargalg_start_maintenance_timer(struct abx500_chargalg *di,
 int duration)
{
 hrtimer_set_expires_range(&di->maintenance_timer,
  ktime_set(duration * ONE_HOUR_IN_SECONDS, 0),
  ktime_set(FIVE_MINUTES_IN_SECONDS, 0));
 di->events.maintenance_timer_expired = 0;
 hrtimer_start_expires(&di->maintenance_timer, HRTIMER_MODE_REL);
}
