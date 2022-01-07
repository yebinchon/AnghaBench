
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtc_device {int owner; int range_max; int range_min; int * ops; } ;
struct platform_device {int dev; } ;


 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int THIS_MODULE ;
 struct rtc_device* devm_rtc_allocate_device (int *) ;
 int rtc_register_device (struct rtc_device*) ;
 int wilco_ec_rtc_ops ;

__attribute__((used)) static int wilco_ec_rtc_probe(struct platform_device *pdev)
{
 struct rtc_device *rtc;

 rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 rtc->ops = &wilco_ec_rtc_ops;

 rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 rtc->range_max = RTC_TIMESTAMP_END_2099;
 rtc->owner = THIS_MODULE;

 return rtc_register_device(rtc);
}
