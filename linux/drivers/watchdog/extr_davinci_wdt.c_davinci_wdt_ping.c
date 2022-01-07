
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct davinci_wdt_device {scalar_t__ base; } ;


 int WDKEY_SEQ0 ;
 int WDKEY_SEQ1 ;
 scalar_t__ WDTCR ;
 int iowrite32 (int ,scalar_t__) ;
 struct davinci_wdt_device* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int davinci_wdt_ping(struct watchdog_device *wdd)
{
 struct davinci_wdt_device *davinci_wdt = watchdog_get_drvdata(wdd);


 iowrite32(WDKEY_SEQ0, davinci_wdt->base + WDTCR);

 iowrite32(WDKEY_SEQ1, davinci_wdt->base + WDTCR);
 return 0;
}
