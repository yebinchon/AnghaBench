
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct ts72xx_wdt_priv {int control_reg; int regval; int feed_reg; } ;


 int TS72XX_WDT_FEED_VAL ;
 struct ts72xx_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;
 int writeb (int ,int ) ;

__attribute__((used)) static int ts72xx_wdt_start(struct watchdog_device *wdd)
{
 struct ts72xx_wdt_priv *priv = watchdog_get_drvdata(wdd);

 writeb(TS72XX_WDT_FEED_VAL, priv->feed_reg);
 writeb(priv->regval, priv->control_reg);

 return 0;
}
