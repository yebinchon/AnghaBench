
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt8500_rtc {scalar_t__ regbase; } ;
struct platform_device {int dummy; } ;


 scalar_t__ VT8500_RTC_IS ;
 struct vt8500_rtc* platform_get_drvdata (struct platform_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int vt8500_rtc_remove(struct platform_device *pdev)
{
 struct vt8500_rtc *vt8500_rtc = platform_get_drvdata(pdev);


 writel(0, vt8500_rtc->regbase + VT8500_RTC_IS);

 return 0;
}
