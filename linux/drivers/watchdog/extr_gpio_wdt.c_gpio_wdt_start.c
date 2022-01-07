
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int status; } ;
struct gpio_wdt_priv {scalar_t__ state; int gpiod; } ;


 int WDOG_HW_RUNNING ;
 int gpio_wdt_ping (struct watchdog_device*) ;
 int gpiod_direction_output (int ,scalar_t__) ;
 int set_bit (int ,int *) ;
 struct gpio_wdt_priv* watchdog_get_drvdata (struct watchdog_device*) ;

__attribute__((used)) static int gpio_wdt_start(struct watchdog_device *wdd)
{
 struct gpio_wdt_priv *priv = watchdog_get_drvdata(wdd);

 priv->state = 0;
 gpiod_direction_output(priv->gpiod, priv->state);

 set_bit(WDOG_HW_RUNNING, &wdd->status);

 return gpio_wdt_ping(wdd);
}
