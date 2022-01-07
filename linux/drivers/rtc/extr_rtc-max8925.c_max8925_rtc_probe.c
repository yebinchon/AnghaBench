
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8925_rtc_info {int rtc_dev; int irq; TYPE_1__* dev; int rtc; struct max8925_chip* chip; } ;
struct max8925_chip {int dev; int rtc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 struct max8925_chip* dev_get_drvdata (int ) ;
 int dev_set_drvdata (TYPE_1__*,struct max8925_rtc_info*) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct max8925_rtc_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int ,char*,struct max8925_rtc_info*) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 int max8925_rtc_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct max8925_rtc_info*) ;
 int rtc_update_handler ;

__attribute__((used)) static int max8925_rtc_probe(struct platform_device *pdev)
{
 struct max8925_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct max8925_rtc_info *info;
 int ret;

 info = devm_kzalloc(&pdev->dev, sizeof(struct max8925_rtc_info),
       GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->chip = chip;
 info->rtc = chip->rtc;
 info->dev = &pdev->dev;
 info->irq = platform_get_irq(pdev, 0);

 ret = devm_request_threaded_irq(&pdev->dev, info->irq, ((void*)0),
     rtc_update_handler, IRQF_ONESHOT,
     "rtc-alarm0", info);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to request IRQ: #%d: %d\n",
   info->irq, ret);
  return ret;
 }

 dev_set_drvdata(&pdev->dev, info);

 platform_set_drvdata(pdev, info);

 device_init_wakeup(&pdev->dev, 1);

 info->rtc_dev = devm_rtc_device_register(&pdev->dev, "max8925-rtc",
     &max8925_rtc_ops, THIS_MODULE);
 ret = PTR_ERR(info->rtc_dev);
 if (IS_ERR(info->rtc_dev)) {
  dev_err(&pdev->dev, "Failed to register RTC device: %d\n", ret);
  return ret;
 }

 return 0;
}
