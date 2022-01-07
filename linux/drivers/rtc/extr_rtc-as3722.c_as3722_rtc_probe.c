
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct as3722_rtc {int alarm_irq; int rtc; TYPE_1__* dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;


 int AS3722_RTC_ALARM_WAKEUP_EN ;
 int AS3722_RTC_CONTROL_REG ;
 int AS3722_RTC_ON ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int as3722_alarm_irq ;
 int as3722_rtc_ops ;
 int as3722_update_bits (struct as3722*,int ,int,int) ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 struct as3722* dev_get_drvdata (int ) ;
 int dev_info (TYPE_1__*,char*,int ) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct as3722_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int ,char*,struct as3722_rtc*) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 int disable_irq (int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct as3722_rtc*) ;

__attribute__((used)) static int as3722_rtc_probe(struct platform_device *pdev)
{
 struct as3722 *as3722 = dev_get_drvdata(pdev->dev.parent);
 struct as3722_rtc *as3722_rtc;
 int ret;

 as3722_rtc = devm_kzalloc(&pdev->dev, sizeof(*as3722_rtc), GFP_KERNEL);
 if (!as3722_rtc)
  return -ENOMEM;

 as3722_rtc->as3722 = as3722;
 as3722_rtc->dev = &pdev->dev;
 platform_set_drvdata(pdev, as3722_rtc);


 ret = as3722_update_bits(as3722, AS3722_RTC_CONTROL_REG,
   AS3722_RTC_ON | AS3722_RTC_ALARM_WAKEUP_EN,
   AS3722_RTC_ON | AS3722_RTC_ALARM_WAKEUP_EN);
 if (ret < 0) {
  dev_err(&pdev->dev, "RTC_CONTROL reg write failed: %d\n", ret);
  return ret;
 }

 device_init_wakeup(&pdev->dev, 1);

 as3722_rtc->rtc = devm_rtc_device_register(&pdev->dev, "as3722-rtc",
    &as3722_rtc_ops, THIS_MODULE);
 if (IS_ERR(as3722_rtc->rtc)) {
  ret = PTR_ERR(as3722_rtc->rtc);
  dev_err(&pdev->dev, "RTC register failed: %d\n", ret);
  return ret;
 }

 as3722_rtc->alarm_irq = platform_get_irq(pdev, 0);
 dev_info(&pdev->dev, "RTC interrupt %d\n", as3722_rtc->alarm_irq);

 ret = devm_request_threaded_irq(&pdev->dev, as3722_rtc->alarm_irq, ((void*)0),
   as3722_alarm_irq, IRQF_ONESHOT,
   "rtc-alarm", as3722_rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to request alarm IRQ %d: %d\n",
    as3722_rtc->alarm_irq, ret);
  return ret;
 }
 disable_irq(as3722_rtc->alarm_irq);
 return 0;
}
