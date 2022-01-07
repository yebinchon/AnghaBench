
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS ;
 int msecs_to_jiffies (int) ;
 int schedule_delayed_work (int *,int ) ;
 int thermal_emergency_poweroff_work ;

__attribute__((used)) static void thermal_emergency_poweroff(void)
{
 int poweroff_delay_ms = CONFIG_THERMAL_EMERGENCY_POWEROFF_DELAY_MS;




 if (poweroff_delay_ms <= 0)
  return;
 schedule_delayed_work(&thermal_emergency_poweroff_work,
         msecs_to_jiffies(poweroff_delay_ms));
}
