
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct sprd_rtc {scalar_t__ irq; TYPE_1__* rtc; TYPE_3__* dev; int base; int regmap; } ;
struct TYPE_11__ {int parent; struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; int name; } ;
struct device_node {int dummy; } ;
struct TYPE_10__ {long long range_max; scalar_t__ range_min; int * ops; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_EARLY_RESUME ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int dev_err (TYPE_3__*,char*) ;
 int dev_get_regmap (int ,int *) ;
 int device_init_wakeup (TYPE_3__*,int) ;
 struct sprd_rtc* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_3__*,int,int *,int ,int,int ,struct sprd_rtc*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_3__*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sprd_rtc*) ;
 int rtc_register_device (TYPE_1__*) ;
 int sprd_rtc_check_alarm_int (struct sprd_rtc*) ;
 int sprd_rtc_check_power_down (struct sprd_rtc*) ;
 int sprd_rtc_handler ;
 int sprd_rtc_ops ;

__attribute__((used)) static int sprd_rtc_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct sprd_rtc *rtc;
 int ret;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 rtc->regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!rtc->regmap)
  return -ENODEV;

 ret = of_property_read_u32(node, "reg", &rtc->base);
 if (ret) {
  dev_err(&pdev->dev, "failed to get RTC base address\n");
  return ret;
 }

 rtc->irq = platform_get_irq(pdev, 0);
 if (rtc->irq < 0)
  return rtc->irq;

 rtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc->rtc))
  return PTR_ERR(rtc->rtc);

 rtc->dev = &pdev->dev;
 platform_set_drvdata(pdev, rtc);


 ret = sprd_rtc_check_alarm_int(rtc);
 if (ret) {
  dev_err(&pdev->dev, "failed to check RTC alarm interrupt\n");
  return ret;
 }


 ret = sprd_rtc_check_power_down(rtc);
 if (ret) {
  dev_err(&pdev->dev, "failed to check RTC time values\n");
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, ((void*)0),
     sprd_rtc_handler,
     IRQF_ONESHOT | IRQF_EARLY_RESUME,
     pdev->name, rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to request RTC irq\n");
  return ret;
 }

 device_init_wakeup(&pdev->dev, 1);

 rtc->rtc->ops = &sprd_rtc_ops;
 rtc->rtc->range_min = 0;
 rtc->rtc->range_max = 5662310399LL;
 ret = rtc_register_device(rtc->rtc);
 if (ret) {
  device_init_wakeup(&pdev->dev, 0);
  return ret;
 }

 return 0;
}
