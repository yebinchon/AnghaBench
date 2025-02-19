
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct da9055_rtc {int alarm_enable; TYPE_5__* da9055; int rtc; } ;
struct da9055_pdata {int dummy; } ;
struct TYPE_9__ {int dev; } ;


 int DA9055_REG_ALARM_Y ;
 int DA9055_RTC_ALM_EN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int da9055_reg_read (TYPE_5__*,int ) ;
 int da9055_rtc_alm_irq ;
 int da9055_rtc_device_init (TYPE_5__*,struct da9055_pdata*) ;
 int da9055_rtc_ops ;
 int dev_err (int ,char*,int) ;
 TYPE_5__* dev_get_drvdata (int ) ;
 struct da9055_pdata* dev_get_platdata (int ) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct da9055_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,char*,struct da9055_rtc*) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9055_rtc*) ;

__attribute__((used)) static int da9055_rtc_probe(struct platform_device *pdev)
{
 struct da9055_rtc *rtc;
 struct da9055_pdata *pdata = ((void*)0);
 int ret, alm_irq;

 rtc = devm_kzalloc(&pdev->dev, sizeof(struct da9055_rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->da9055 = dev_get_drvdata(pdev->dev.parent);
 pdata = dev_get_platdata(rtc->da9055->dev);
 platform_set_drvdata(pdev, rtc);

 ret = da9055_rtc_device_init(rtc->da9055, pdata);
 if (ret < 0)
  goto err_rtc;

 ret = da9055_reg_read(rtc->da9055, DA9055_REG_ALARM_Y);
 if (ret < 0)
  goto err_rtc;

 if (ret & DA9055_RTC_ALM_EN)
  rtc->alarm_enable = 1;

 device_init_wakeup(&pdev->dev, 1);

 rtc->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
     &da9055_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc->rtc)) {
  ret = PTR_ERR(rtc->rtc);
  goto err_rtc;
 }

 alm_irq = platform_get_irq_byname(pdev, "ALM");
 if (alm_irq < 0)
  return alm_irq;

 ret = devm_request_threaded_irq(&pdev->dev, alm_irq, ((void*)0),
     da9055_rtc_alm_irq,
     IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
     "ALM", rtc);
 if (ret != 0)
  dev_err(rtc->da9055->dev, "irq registration failed: %d\n", ret);

err_rtc:
 return ret;

}
