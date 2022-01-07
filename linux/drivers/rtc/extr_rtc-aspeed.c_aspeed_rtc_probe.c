
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct aspeed_rtc {TYPE_1__* rtc_dev; TYPE_1__* base; } ;
struct TYPE_6__ {long long range_max; int range_min; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int RTC_TIMESTAMP_BEGIN_1900 ;
 int aspeed_rtc_ops ;
 TYPE_1__* devm_ioremap_resource (int *,struct resource*) ;
 struct aspeed_rtc* devm_kzalloc (int *,int,int ) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct aspeed_rtc*) ;
 int rtc_register_device (TYPE_1__*) ;

__attribute__((used)) static int aspeed_rtc_probe(struct platform_device *pdev)
{
 struct aspeed_rtc *rtc;
 struct resource *res;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rtc->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rtc->base))
  return PTR_ERR(rtc->base);

 rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc->rtc_dev))
  return PTR_ERR(rtc->rtc_dev);

 platform_set_drvdata(pdev, rtc);

 rtc->rtc_dev->ops = &aspeed_rtc_ops;
 rtc->rtc_dev->range_min = RTC_TIMESTAMP_BEGIN_1900;
 rtc->rtc_dev->range_max = 38814989399LL;

 return rtc_register_device(rtc->rtc_dev);
}
