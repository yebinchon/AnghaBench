
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct device {int dummy; } ;


 int CL_SEL_MASK ;
 int OSC_SRC_SEL ;
 int PRE_BYPASS ;
 int RTC_CTRL ;
 int RTC_ENABLE ;
 struct device* to_tps6586x_dev (int *) ;
 int tps6586x_update (struct device*,int ,int ,int) ;

__attribute__((used)) static int tps6586x_rtc_remove(struct platform_device *pdev)
{
 struct device *tps_dev = to_tps6586x_dev(&pdev->dev);

 tps6586x_update(tps_dev, RTC_CTRL, 0,
  RTC_ENABLE | OSC_SRC_SEL | PRE_BYPASS | CL_SEL_MASK);
 return 0;
}
