
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rtc_device {int uie_unsupported; unsigned long long range_max; int set_start_time; int start_secs; struct rtc_class_ops* ops; } ;
struct rtc_class_ops {int dummy; } ;
struct platform_device_id {scalar_t__ driver_data; } ;
struct platform_device {int dev; } ;


 int AB8500_RTC ;
 int AB8500_RTC_STAT_REG ;
 int ENODEV ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (struct rtc_device*) ;
 int PTR_ERR (struct rtc_device*) ;
 int RTC_STATUS_DATA ;
 int RTC_TIMESTAMP_BEGIN_2000 ;
 int ab8500_rtc_sysfs_files ;
 int abx500_get_register_interruptible (int *,int ,int ,int*) ;
 int abx500_mask_and_set_register_interruptible (int *,int ,int ,int,int) ;
 int dev_err (int *,char*) ;
 int dev_pm_set_wake_irq (int *,int) ;
 int device_init_wakeup (int *,int) ;
 int devm_request_threaded_irq (int *,int,int *,int ,int ,char*,struct rtc_device*) ;
 struct rtc_device* devm_rtc_allocate_device (int *) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct rtc_device*) ;
 int rtc_add_group (struct rtc_device*,int *) ;
 int rtc_alarm_handler ;
 int rtc_register_device (struct rtc_device*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ab8500_rtc_probe(struct platform_device *pdev)
{
 const struct platform_device_id *platid = platform_get_device_id(pdev);
 int err;
 struct rtc_device *rtc;
 u8 rtc_ctrl;
 int irq;

 irq = platform_get_irq_byname(pdev, "ALARM");
 if (irq < 0)
  return irq;


 err = abx500_mask_and_set_register_interruptible(&pdev->dev, AB8500_RTC,
  AB8500_RTC_STAT_REG, RTC_STATUS_DATA, RTC_STATUS_DATA);
 if (err < 0)
  return err;


 usleep_range(1000, 5000);

 err = abx500_get_register_interruptible(&pdev->dev, AB8500_RTC,
  AB8500_RTC_STAT_REG, &rtc_ctrl);
 if (err < 0)
  return err;


 if (!(rtc_ctrl & RTC_STATUS_DATA)) {
  dev_err(&pdev->dev, "RTC supply failure\n");
  return -ENODEV;
 }

 device_init_wakeup(&pdev->dev, 1);

 rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc))
  return PTR_ERR(rtc);

 rtc->ops = (struct rtc_class_ops *)platid->driver_data;

 err = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
   rtc_alarm_handler, IRQF_ONESHOT,
   "ab8500-rtc", rtc);
 if (err < 0)
  return err;

 dev_pm_set_wake_irq(&pdev->dev, irq);
 platform_set_drvdata(pdev, rtc);

 rtc->uie_unsupported = 1;

 rtc->range_max = (1ULL << 24) * 60 - 1;
 rtc->start_secs = RTC_TIMESTAMP_BEGIN_2000;
 rtc->set_start_time = 1;

 err = rtc_add_group(rtc, &ab8500_rtc_sysfs_files);
 if (err)
  return err;

 return rtc_register_device(rtc);
}
