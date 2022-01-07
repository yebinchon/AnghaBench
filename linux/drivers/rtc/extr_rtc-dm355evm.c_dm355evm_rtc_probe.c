
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int range_max; int * ops; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int U32_MAX ;
 struct rtc_device* devm_rtc_allocate_device (int *) ;
 int dm355evm_rtc_ops ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 int rtc_register_device (struct rtc_device*) ;

__attribute__((used)) static int dm355evm_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc;

 rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 platform_set_drvdata(pdev, rtc);

 rtc->ops = &dm355evm_rtc_ops;
 rtc->range_max = U32_MAX;

 return rtc_register_device(rtc);
}
