
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int EINVAL ;
 unsigned int WDT_SOFTTIMER_MAX ;
 int pr_warn (char*,unsigned int,unsigned int) ;

__attribute__((used)) static int bcm47xx_wdt_soft_set_timeout(struct watchdog_device *wdd,
     unsigned int new_time)
{
 if (new_time < 1 || new_time > WDT_SOFTTIMER_MAX) {
  pr_warn("timeout value must be 1<=x<=%d, using %d\n",
   WDT_SOFTTIMER_MAX, new_time);
  return -EINVAL;
 }

 wdd->timeout = new_time;
 return 0;
}
