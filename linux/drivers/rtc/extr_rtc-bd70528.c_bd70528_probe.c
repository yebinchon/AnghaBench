
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct rtc_time {int dummy; } ;
struct rtc_device {int * ops; int range_max; int range_min; } ;
struct rohm_regmap_dev {int regmap; } ;
struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct bd70528_rtc {TYPE_1__* dev; struct rohm_regmap_dev* mfd; } ;


 int BD70528_INT_RTC_MASK ;
 unsigned int BD70528_MASK_RTC_HOUR_24H ;
 int BD70528_REG_INT_MAIN_MASK ;
 int BD70528_REG_RTC_HOUR ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int RTC_TIMESTAMP_END_2099 ;
 int alm_hndlr ;
 int bd70528_get_time (TYPE_1__*,struct rtc_time*) ;
 int bd70528_rtc_ops ;
 int bd70528_set_time (TYPE_1__*,struct rtc_time*) ;
 int dev_err (TYPE_1__*,char*) ;
 struct rohm_regmap_dev* dev_get_drvdata (int ) ;
 int device_set_wakeup_capable (TYPE_1__*,int) ;
 int device_wakeup_enable (TYPE_1__*) ;
 struct bd70528_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int *,int ,char*,struct rtc_device*) ;
 struct rtc_device* devm_rtc_allocate_device (TYPE_1__*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct bd70528_rtc*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtc_register_device (struct rtc_device*) ;

__attribute__((used)) static int bd70528_probe(struct platform_device *pdev)
{
 struct bd70528_rtc *bd_rtc;
 struct rohm_regmap_dev *mfd;
 int ret;
 struct rtc_device *rtc;
 int irq;
 unsigned int hr;

 mfd = dev_get_drvdata(pdev->dev.parent);
 if (!mfd) {
  dev_err(&pdev->dev, "No MFD driver data\n");
  return -EINVAL;
 }
 bd_rtc = devm_kzalloc(&pdev->dev, sizeof(*bd_rtc), GFP_KERNEL);
 if (!bd_rtc)
  return -ENOMEM;

 bd_rtc->mfd = mfd;
 bd_rtc->dev = &pdev->dev;

 irq = platform_get_irq_byname(pdev, "bd70528-rtc-alm");
 if (irq < 0)
  return irq;

 platform_set_drvdata(pdev, bd_rtc);

 ret = regmap_read(mfd->regmap, BD70528_REG_RTC_HOUR, &hr);

 if (ret) {
  dev_err(&pdev->dev, "Failed to reag RTC clock\n");
  return ret;
 }

 if (!(hr & BD70528_MASK_RTC_HOUR_24H)) {
  struct rtc_time t;

  ret = bd70528_get_time(&pdev->dev, &t);

  if (!ret)
   ret = bd70528_set_time(&pdev->dev, &t);

  if (ret) {
   dev_err(&pdev->dev,
    "Setting 24H clock for RTC failed\n");
   return ret;
  }
 }

 device_set_wakeup_capable(&pdev->dev, 1);
 device_wakeup_enable(&pdev->dev);

 rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc)) {
  dev_err(&pdev->dev, "RTC device creation failed\n");
  return PTR_ERR(rtc);
 }

 rtc->range_min = RTC_TIMESTAMP_BEGIN_2000;
 rtc->range_max = RTC_TIMESTAMP_END_2099;
 rtc->ops = &bd70528_rtc_ops;


 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0), &alm_hndlr,
     IRQF_ONESHOT, "bd70528-rtc", rtc);
 if (ret)
  return ret;







 ret = regmap_update_bits(mfd->regmap,
     BD70528_REG_INT_MAIN_MASK,
     BD70528_INT_RTC_MASK, 0);
 if (ret) {
  dev_err(&pdev->dev, "Failed to enable RTC interrupts\n");
  return ret;
 }

 return rtc_register_device(rtc);
}
