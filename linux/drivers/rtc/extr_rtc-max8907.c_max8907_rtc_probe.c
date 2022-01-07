
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8907_rtc {int irq; int rtc_dev; int regmap; struct max8907* max8907; } ;
struct max8907 {int irqc_rtc; int regmap_rtc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int MAX8907_IRQ_RTC_ALARM0 ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 struct max8907* dev_get_drvdata (int ) ;
 struct max8907_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct max8907_rtc*) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 int max8907_irq_handler ;
 int max8907_rtc_ops ;
 int platform_set_drvdata (struct platform_device*,struct max8907_rtc*) ;
 int regmap_irq_get_virq (int ,int ) ;

__attribute__((used)) static int max8907_rtc_probe(struct platform_device *pdev)
{
 struct max8907 *max8907 = dev_get_drvdata(pdev->dev.parent);
 struct max8907_rtc *rtc;
 int ret;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;
 platform_set_drvdata(pdev, rtc);

 rtc->max8907 = max8907;
 rtc->regmap = max8907->regmap_rtc;

 rtc->rtc_dev = devm_rtc_device_register(&pdev->dev, "max8907-rtc",
     &max8907_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc->rtc_dev)) {
  ret = PTR_ERR(rtc->rtc_dev);
  dev_err(&pdev->dev, "Failed to register RTC device: %d\n", ret);
  return ret;
 }

 rtc->irq = regmap_irq_get_virq(max8907->irqc_rtc,
           MAX8907_IRQ_RTC_ALARM0);
 if (rtc->irq < 0)
  return rtc->irq;

 ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, ((void*)0),
    max8907_irq_handler,
    IRQF_ONESHOT, "max8907-alarm0", rtc);
 if (ret < 0)
  dev_err(&pdev->dev, "Failed to request IRQ%d: %d\n",
   rtc->irq, ret);

 return ret;
}
