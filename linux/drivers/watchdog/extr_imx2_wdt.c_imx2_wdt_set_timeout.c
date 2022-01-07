
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {unsigned int timeout; } ;


 int IMX2_WDT_MAX_TIME ;
 int __imx2_wdt_set_timeout (struct watchdog_device*,unsigned int) ;
 unsigned int min (unsigned int,int ) ;

__attribute__((used)) static int imx2_wdt_set_timeout(struct watchdog_device *wdog,
    unsigned int new_timeout)
{
 unsigned int actual;

 actual = min(new_timeout, IMX2_WDT_MAX_TIME);
 __imx2_wdt_set_timeout(wdog, actual);
 wdog->timeout = new_timeout;
 return 0;
}
