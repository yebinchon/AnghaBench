
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_wdt_priv {scalar_t__ hw_algo; int gpiod; } ;


 scalar_t__ HW_ALGO_TOGGLE ;
 int gpiod_direction_input (int ) ;
 int gpiod_set_value_cansleep (int ,int) ;

__attribute__((used)) static void gpio_wdt_disable(struct gpio_wdt_priv *priv)
{

 gpiod_set_value_cansleep(priv->gpiod, 1);


 if (priv->hw_algo == HW_ALGO_TOGGLE)
  gpiod_direction_input(priv->gpiod);
}
