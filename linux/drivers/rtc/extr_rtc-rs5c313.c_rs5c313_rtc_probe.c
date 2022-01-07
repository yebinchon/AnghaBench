
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int dummy; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int THIS_MODULE ;
 struct rtc_device* devm_rtc_device_register (int *,char*,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 int rs5c313_rtc_ops ;

__attribute__((used)) static int rs5c313_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc = devm_rtc_device_register(&pdev->dev, "rs5c313",
    &rs5c313_rtc_ops, THIS_MODULE);

 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 platform_set_drvdata(pdev, rtc);

 return 0;
}
