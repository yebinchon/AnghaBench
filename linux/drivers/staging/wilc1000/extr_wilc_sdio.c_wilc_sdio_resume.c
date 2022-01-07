
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wilc {scalar_t__ suspend_event; } ;
struct sdio_func {int dummy; } ;
struct device {int dummy; } ;


 int chip_allow_sleep (struct wilc*) ;
 int chip_wakeup (struct wilc*) ;
 int dev_info (struct device*,char*) ;
 struct sdio_func* dev_to_sdio_func (struct device*) ;
 int host_wakeup_notify (struct wilc*) ;
 struct wilc* sdio_get_drvdata (struct sdio_func*) ;
 int sdio_release_host (struct sdio_func*) ;
 int wilc_sdio_init (struct wilc*,int) ;

__attribute__((used)) static int wilc_sdio_resume(struct device *dev)
{
 struct sdio_func *func = dev_to_sdio_func(dev);
 struct wilc *wilc = sdio_get_drvdata(func);

 dev_info(dev, "sdio resume\n");
 sdio_release_host(func);
 chip_wakeup(wilc);
 wilc_sdio_init(wilc, 1);

 if (wilc->suspend_event)
  host_wakeup_notify(wilc);

 chip_allow_sleep(wilc);

 return 0;
}
