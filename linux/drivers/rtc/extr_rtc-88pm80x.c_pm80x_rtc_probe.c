
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct pm80x_rtc_pdata {int rtc_wakeup; } ;
struct pm80x_rtc_info {scalar_t__ irq; TYPE_2__* rtc_dev; int map; TYPE_4__* dev; struct pm80x_chip* chip; } ;
struct pm80x_chip {int dev; int regmap; } ;
struct TYPE_14__ {struct device_node* of_node; int parent; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int * platform_data; } ;
struct TYPE_13__ {TYPE_1__ dev; int range_max; int * ops; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 scalar_t__ IS_ERR (TYPE_2__*) ;
 int PM800_RTC1_USE_XO ;
 int PM800_RTC_CONTROL ;
 int PTR_ERR (TYPE_2__*) ;
 int U32_MAX ;
 int dev_err (TYPE_4__*,char*,...) ;
 struct pm80x_chip* dev_get_drvdata (int ) ;
 struct pm80x_rtc_pdata* dev_get_platdata (TYPE_4__*) ;
 int dev_set_drvdata (TYPE_4__*,struct pm80x_rtc_info*) ;
 int device_init_wakeup (TYPE_4__*,int) ;
 void* devm_kzalloc (TYPE_4__*,int,int ) ;
 TYPE_2__* devm_rtc_allocate_device (TYPE_4__*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int pm80x_free_irq (struct pm80x_chip*,scalar_t__,struct pm80x_rtc_info*) ;
 int pm80x_request_irq (struct pm80x_chip*,scalar_t__,int ,int ,char*,struct pm80x_rtc_info*) ;
 int pm80x_rtc_ops ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rtc_register_device (TYPE_2__*) ;
 int rtc_update_handler ;

__attribute__((used)) static int pm80x_rtc_probe(struct platform_device *pdev)
{
 struct pm80x_chip *chip = dev_get_drvdata(pdev->dev.parent);
 struct pm80x_rtc_pdata *pdata = dev_get_platdata(&pdev->dev);
 struct pm80x_rtc_info *info;
 struct device_node *node = pdev->dev.of_node;
 int ret;

 if (!pdata && !node) {
  dev_err(&pdev->dev,
   "pm80x-rtc requires platform data or of_node\n");
  return -EINVAL;
 }

 if (!pdata) {
  pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
  if (!pdata) {
   dev_err(&pdev->dev, "failed to allocate memory\n");
   return -ENOMEM;
  }
 }

 info =
     devm_kzalloc(&pdev->dev, sizeof(struct pm80x_rtc_info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;
 info->irq = platform_get_irq(pdev, 0);
 if (info->irq < 0) {
  ret = -EINVAL;
  goto out;
 }

 info->chip = chip;
 info->map = chip->regmap;
 if (!info->map) {
  dev_err(&pdev->dev, "no regmap!\n");
  ret = -EINVAL;
  goto out;
 }

 info->dev = &pdev->dev;
 dev_set_drvdata(&pdev->dev, info);

 info->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(info->rtc_dev))
  return PTR_ERR(info->rtc_dev);

 ret = pm80x_request_irq(chip, info->irq, rtc_update_handler,
    IRQF_ONESHOT, "rtc", info);
 if (ret < 0) {
  dev_err(chip->dev, "Failed to request IRQ: #%d: %d\n",
   info->irq, ret);
  goto out;
 }

 info->rtc_dev->ops = &pm80x_rtc_ops;
 info->rtc_dev->range_max = U32_MAX;

 ret = rtc_register_device(info->rtc_dev);
 if (ret)
  goto out_rtc;





 regmap_update_bits(info->map, PM800_RTC_CONTROL, PM800_RTC1_USE_XO,
      PM800_RTC1_USE_XO);


 info->rtc_dev->dev.platform_data = &pdata->rtc_wakeup;

 device_init_wakeup(&pdev->dev, 1);

 return 0;
out_rtc:
 pm80x_free_irq(chip, info->irq, info);
out:
 return ret;
}
