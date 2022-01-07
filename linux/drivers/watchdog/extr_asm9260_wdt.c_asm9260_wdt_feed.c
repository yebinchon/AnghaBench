
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct asm9260_wdt_priv {scalar_t__ iobase; } ;


 scalar_t__ HW_WDFEED ;
 int iowrite32 (int,scalar_t__) ;
 struct asm9260_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int asm9260_wdt_feed(struct watchdog_device *wdd)
{
 struct asm9260_wdt_priv *priv = watchdog_get_drvdata(wdd);

 iowrite32(0xaa, priv->iobase + HW_WDFEED);
 iowrite32(0x55, priv->iobase + HW_WDFEED);

 return 0;
}
