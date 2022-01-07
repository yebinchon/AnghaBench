
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {int rtc_clk; scalar_t__ gpio_irq; } ;
struct sdio_func {int dummy; } ;


 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int gpiod_put (scalar_t__) ;
 struct wilc* sdio_get_drvdata (struct sdio_func*) ;
 int wilc_netdev_cleanup (struct wilc*) ;

__attribute__((used)) static void wilc_sdio_remove(struct sdio_func *func)
{
 struct wilc *wilc = sdio_get_drvdata(func);


 if (wilc->gpio_irq)
  gpiod_put(wilc->gpio_irq);

 if (!IS_ERR(wilc->rtc_clk))
  clk_disable_unprepare(wilc->rtc_clk);

 wilc_netdev_cleanup(wilc);
}
