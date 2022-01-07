
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8350 {int dummy; } ;
struct platform_device {int dummy; } ;


 int WM8350_IRQ_RTC_ALM ;
 int WM8350_IRQ_RTC_SEC ;
 struct wm8350* platform_get_drvdata (struct platform_device*) ;
 int wm8350_free_irq (struct wm8350*,int ,struct wm8350*) ;

__attribute__((used)) static int wm8350_rtc_remove(struct platform_device *pdev)
{
 struct wm8350 *wm8350 = platform_get_drvdata(pdev);

 wm8350_free_irq(wm8350, WM8350_IRQ_RTC_SEC, wm8350);
 wm8350_free_irq(wm8350, WM8350_IRQ_RTC_ALM, wm8350);

 return 0;
}
