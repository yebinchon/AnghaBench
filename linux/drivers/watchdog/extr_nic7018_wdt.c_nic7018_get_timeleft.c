
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int dummy; } ;
struct nic7018_wdt {int period; scalar_t__ io_base; } ;


 scalar_t__ WDT_COUNT ;
 int inb (scalar_t__) ;
 unsigned int nic7018_timeout (int ,int) ;
 struct nic7018_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static unsigned int nic7018_get_timeleft(struct watchdog_device *wdd)
{
 struct nic7018_wdt *wdt = watchdog_get_drvdata(wdd);
 u8 count;

 count = inb(wdt->io_base + WDT_COUNT) & 0xF;
 if (!count)
  return 0;

 return nic7018_timeout(wdt->period, count);
}
