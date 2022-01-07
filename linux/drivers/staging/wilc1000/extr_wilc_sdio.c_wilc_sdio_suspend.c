
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {scalar_t__ suspend_event; int rtc_clk; } ;
struct sdio_func {int dev; } ;
struct device {int dummy; } ;


 int IS_ERR (int ) ;
 int chip_allow_sleep (struct wilc*) ;
 int chip_wakeup (struct wilc*) ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int *,char*) ;
 int dev_info (struct device*,char*) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int host_sleep_notify (struct wilc*) ;
 int sdio_claim_host (struct sdio_func*) ;
 struct wilc* sdio_get_drvdata (struct sdio_func*) ;
 int wilc_sdio_reset (struct wilc*) ;

__attribute__((used)) static int wilc_sdio_suspend(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct wilc *wilc = sdio_get_drvdata(func);
 int ret;

 dev_info(dev, "sdio suspend\n");
 chip_wakeup(wilc);

 if (!IS_ERR(wilc->rtc_clk))
  clk_disable_unprepare(wilc->rtc_clk);

 if (wilc->suspend_event) {
  host_sleep_notify(wilc);
  chip_allow_sleep(wilc);
 }

 ret = wilc_sdio_reset(wilc);
 if (ret) {
  dev_err(&func->dev, "Fail reset sdio\n");
  return ret;
 }
 sdio_claim_host(func);

 return 0;
}
