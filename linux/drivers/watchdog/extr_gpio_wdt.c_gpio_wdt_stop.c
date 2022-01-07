
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int status; } ;
struct gpio_wdt_priv {int always_running; } ;


 int WDOG_HW_RUNNING ;
 int gpio_wdt_disable (struct gpio_wdt_priv*) ;
 int set_bit (int ,int *) ;
 struct gpio_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int gpio_wdt_stop(struct watchdog_device *wdd)
{
 struct gpio_wdt_priv *priv = watchdog_get_drvdata(wdd);

 if (!priv->always_running) {
  gpio_wdt_disable(priv);
 } else {
  set_bit(WDOG_HW_RUNNING, &wdd->status);
 }

 return 0;
}
