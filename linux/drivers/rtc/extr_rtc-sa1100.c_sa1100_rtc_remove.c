
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100_rtc {int clk; int lock; int rtsr; } ;
struct platform_device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sa1100_rtc* platform_get_drvdata (struct platform_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static int sa1100_rtc_remove(struct platform_device *pdev)
{
 struct sa1100_rtc *info = platform_get_drvdata(pdev);

 if (info) {
  spin_lock_irq(&info->lock);
  writel_relaxed(0, info->rtsr);
  spin_unlock_irq(&info->lock);
  clk_disable_unprepare(info->clk);
 }

 return 0;
}
