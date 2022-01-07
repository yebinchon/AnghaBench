
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TPACPI_FAN_WR_NONE ;
 scalar_t__ TPACPI_LIFE_EXITING ;
 int cancel_delayed_work (int *) ;
 scalar_t__ fan_control_access_mode ;
 int fan_watchdog_maxinterval ;
 int fan_watchdog_task ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 scalar_t__ tpacpi_lifecycle ;
 int tpacpi_wq ;

__attribute__((used)) static void fan_watchdog_reset(void)
{
 if (fan_control_access_mode == TPACPI_FAN_WR_NONE)
  return;

 if (fan_watchdog_maxinterval > 0 &&
     tpacpi_lifecycle != TPACPI_LIFE_EXITING)
  mod_delayed_work(tpacpi_wq, &fan_watchdog_task,
   msecs_to_jiffies(fan_watchdog_maxinterval * 1000));
 else
  cancel_delayed_work(&fan_watchdog_task);
}
