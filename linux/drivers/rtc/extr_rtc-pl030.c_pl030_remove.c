
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pl030_rtc {scalar_t__ base; } ;
struct amba_device {int * irq; } ;


 scalar_t__ RTC_CR ;
 struct pl030_rtc* amba_get_drvdata (struct amba_device*) ;
 int amba_release_regions (struct amba_device*) ;
 int free_irq (int ,struct pl030_rtc*) ;
 int iounmap (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pl030_remove(struct amba_device *dev)
{
 struct pl030_rtc *rtc = amba_get_drvdata(dev);

 writel(0, rtc->base + RTC_CR);

 free_irq(dev->irq[0], rtc);
 iounmap(rtc->base);
 amba_release_regions(dev);

 return 0;
}
