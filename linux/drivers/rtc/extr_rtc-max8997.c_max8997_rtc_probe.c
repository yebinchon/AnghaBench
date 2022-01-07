
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct max8997_rtc_info {int virq; int rtc_dev; int rtc; struct max8997_dev* max8997; TYPE_1__* dev; int lock; } ;
struct max8997_dev {int irq_domain; int rtc; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int MAX8997_PMICIRQ_RTCA1 ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct max8997_dev* dev_get_drvdata (int ) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct max8997_rtc_info* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,struct max8997_rtc_info*) ;
 int devm_rtc_device_register (TYPE_1__*,char*,int *,int ) ;
 int irq_create_mapping (int ,int ) ;
 int max8997_rtc_alarm_irq ;
 int max8997_rtc_enable_smpl (struct max8997_rtc_info*,int) ;
 int max8997_rtc_enable_wtsr (struct max8997_rtc_info*,int) ;
 int max8997_rtc_init_reg (struct max8997_rtc_info*) ;
 int max8997_rtc_ops ;
 int mutex_init (int *) ;
 int platform_set_drvdata (struct platform_device*,struct max8997_rtc_info*) ;

__attribute__((used)) static int max8997_rtc_probe(struct platform_device *pdev)
{
 struct max8997_dev *max8997 = dev_get_drvdata(pdev->dev.parent);
 struct max8997_rtc_info *info;
 int ret, virq;

 info = devm_kzalloc(&pdev->dev, sizeof(struct max8997_rtc_info),
   GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 mutex_init(&info->lock);
 info->dev = &pdev->dev;
 info->max8997 = max8997;
 info->rtc = max8997->rtc;

 platform_set_drvdata(pdev, info);

 ret = max8997_rtc_init_reg(info);

 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to initialize RTC reg:%d\n", ret);
  return ret;
 }

 max8997_rtc_enable_wtsr(info, 1);
 max8997_rtc_enable_smpl(info, 1);

 device_init_wakeup(&pdev->dev, 1);

 info->rtc_dev = devm_rtc_device_register(&pdev->dev, "max8997-rtc",
     &max8997_rtc_ops, THIS_MODULE);

 if (IS_ERR(info->rtc_dev)) {
  ret = PTR_ERR(info->rtc_dev);
  dev_err(&pdev->dev, "Failed to register RTC device: %d\n", ret);
  return ret;
 }

 virq = irq_create_mapping(max8997->irq_domain, MAX8997_PMICIRQ_RTCA1);
 if (!virq) {
  dev_err(&pdev->dev, "Failed to create mapping alarm IRQ\n");
  ret = -ENXIO;
  goto err_out;
 }
 info->virq = virq;

 ret = devm_request_threaded_irq(&pdev->dev, virq, ((void*)0),
    max8997_rtc_alarm_irq, 0,
    "rtc-alarm0", info);
 if (ret < 0)
  dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
   info->virq, ret);

err_out:
 return ret;
}
