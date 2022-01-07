
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;
struct moxart_wdt_dev {scalar_t__ base; } ;


 scalar_t__ REG_ENABLE ;
 struct moxart_wdt_dev* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int moxart_wdt_stop(struct watchdog_device *wdt_dev)
{
 struct moxart_wdt_dev *moxart_wdt = watchdog_get_drvdata(wdt_dev);

 writel(0, moxart_wdt->base + REG_ENABLE);

 return 0;
}
