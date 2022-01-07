
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct tqmx86_wdt {scalar_t__ io_base; } ;


 scalar_t__ TQMX86_WDCS ;
 int iowrite8 (int,scalar_t__) ;
 struct tqmx86_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int tqmx86_wdt_start(struct watchdog_device *wdd)
{
 struct tqmx86_wdt *priv = watchdog_get_drvdata(wdd);

 iowrite8(0x81, priv->io_base + TQMX86_WDCS);

 return 0;
}
