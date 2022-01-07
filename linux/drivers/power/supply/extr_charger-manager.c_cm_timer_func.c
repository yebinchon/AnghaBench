
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alarm {int dummy; } ;
typedef int ktime_t ;
typedef enum alarmtimer_restart { ____Placeholder_alarmtimer_restart } alarmtimer_restart ;


 int ALARMTIMER_NORESTART ;
 int cm_timer_set ;

__attribute__((used)) static enum alarmtimer_restart cm_timer_func(struct alarm *alarm, ktime_t now)
{
 cm_timer_set = 0;
 return ALARMTIMER_NORESTART;
}
