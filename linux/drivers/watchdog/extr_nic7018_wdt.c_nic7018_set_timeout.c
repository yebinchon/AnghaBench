
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {int timeout; } ;
struct nic7018_wdt {int period; scalar_t__ io_base; } ;
struct nic7018_config {int divider; int period; } ;


 scalar_t__ WDT_PRESET_PRESCALE ;
 struct nic7018_config* nic7018_get_config (unsigned int,int*) ;
 int nic7018_timeout (int ,int) ;
 int outb (int,scalar_t__) ;
 struct nic7018_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int nic7018_set_timeout(struct watchdog_device *wdd,
          unsigned int timeout)
{
 struct nic7018_wdt *wdt = watchdog_get_drvdata(wdd);
 const struct nic7018_config *config;
 u8 counter;

 config = nic7018_get_config(timeout, &counter);

 outb(counter << 4 | config->divider,
      wdt->io_base + WDT_PRESET_PRESCALE);

 wdd->timeout = nic7018_timeout(config->period, counter);
 wdt->period = config->period;

 return 0;
}
