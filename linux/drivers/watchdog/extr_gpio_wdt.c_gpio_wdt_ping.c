
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct gpio_wdt_priv {int hw_algo; int state; int gpiod; } ;




 int gpiod_set_value_cansleep (int ,int) ;
 int udelay (int) ;
 struct gpio_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int gpio_wdt_ping(struct watchdog_device *wdd)
{
 struct gpio_wdt_priv *priv = watchdog_get_drvdata(wdd);

 switch (priv->hw_algo) {
 case 128:

  priv->state = !priv->state;
  gpiod_set_value_cansleep(priv->gpiod, priv->state);
  break;
 case 129:

  gpiod_set_value_cansleep(priv->gpiod, 1);
  udelay(1);
  gpiod_set_value_cansleep(priv->gpiod, 0);
  break;
 }
 return 0;
}
