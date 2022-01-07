
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct watchdog_device {int dummy; } ;
struct sp805_wdt {int load_val; int lock; scalar_t__ base; TYPE_1__* adev; int clk; } ;
struct TYPE_2__ {int dev; } ;


 int INT_ENABLE ;
 int INT_MASK ;
 int LOCK ;
 int RESET_ENABLE ;
 int UNLOCK ;
 scalar_t__ WDTCONTROL ;
 scalar_t__ WDTINTCLR ;
 scalar_t__ WDTLOAD ;
 scalar_t__ WDTLOCK ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int readl_relaxed (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct sp805_wdt* watchdog_get_drvdata (struct watchdog_device*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int wdt_config(struct watchdog_device *wdd, bool ping)
{
 struct sp805_wdt *wdt = watchdog_get_drvdata(wdd);
 int ret;

 if (!ping) {

  ret = clk_prepare_enable(wdt->clk);
  if (ret) {
   dev_err(&wdt->adev->dev, "clock enable fail");
   return ret;
  }
 }

 spin_lock(&wdt->lock);

 writel_relaxed(UNLOCK, wdt->base + WDTLOCK);
 writel_relaxed(wdt->load_val, wdt->base + WDTLOAD);
 writel_relaxed(INT_MASK, wdt->base + WDTINTCLR);

 if (!ping)
  writel_relaxed(INT_ENABLE | RESET_ENABLE, wdt->base +
    WDTCONTROL);

 writel_relaxed(LOCK, wdt->base + WDTLOCK);


 readl_relaxed(wdt->base + WDTLOCK);
 spin_unlock(&wdt->lock);

 return 0;
}
