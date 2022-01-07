
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct watchdog_device {unsigned int timeout; } ;
struct tqmx86_wdt {scalar_t__ io_base; } ;


 scalar_t__ TQMX86_WDCFG ;
 int ilog2 (unsigned int) ;
 int iowrite8 (int,scalar_t__) ;
 unsigned int roundup_pow_of_two (unsigned int) ;
 struct tqmx86_wdt* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int tqmx86_wdt_set_timeout(struct watchdog_device *wdd, unsigned int t)
{
 struct tqmx86_wdt *priv = watchdog_get_drvdata(wdd);
 u8 val;

 t = roundup_pow_of_two(t);
 val = ilog2(t) | 0x90;
 val += 3;
 iowrite8(val, priv->io_base + TQMX86_WDCFG);

 wdd->timeout = t;

 return 0;
}
