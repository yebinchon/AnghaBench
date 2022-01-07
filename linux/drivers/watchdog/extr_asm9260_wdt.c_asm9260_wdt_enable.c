
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct watchdog_device {int dummy; } ;
struct asm9260_wdt_priv {scalar_t__ mode; scalar_t__ iobase; } ;


 int BM_MOD_WDEN ;
 int BM_MOD_WDRESET ;
 scalar_t__ HW_RESET ;
 scalar_t__ HW_WDMOD ;
 int asm9260_wdt_feed (struct watchdog_device*) ;
 int asm9260_wdt_updatetimeout (struct watchdog_device*) ;
 int iowrite32 (int,scalar_t__) ;
 struct asm9260_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int asm9260_wdt_enable(struct watchdog_device *wdd)
{
 struct asm9260_wdt_priv *priv = watchdog_get_drvdata(wdd);
 u32 mode = 0;

 if (priv->mode == HW_RESET)
  mode = BM_MOD_WDRESET;

 iowrite32(BM_MOD_WDEN | mode, priv->iobase + HW_WDMOD);

 asm9260_wdt_updatetimeout(wdd);

 asm9260_wdt_feed(wdd);

 return 0;
}
