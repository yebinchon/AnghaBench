
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 scalar_t__ TPACPI_LIFE_RUNNING ;
 int fan_set_enable () ;
 int fan_watchdog_reset () ;
 int pr_err (char*,int) ;
 int pr_notice (char*) ;
 scalar_t__ tpacpi_lifecycle ;

__attribute__((used)) static void fan_watchdog_fire(struct work_struct *ignored)
{
 int rc;

 if (tpacpi_lifecycle != TPACPI_LIFE_RUNNING)
  return;

 pr_notice("fan watchdog: enabling fan\n");
 rc = fan_set_enable();
 if (rc < 0) {
  pr_err("fan watchdog: error %d while enabling fan, will try again later...\n",
         rc);

  fan_watchdog_reset();
 }
}
