
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct rc5t583_rtc {int rtc; } ;
struct rc5t583_platform_data {int irq_base; } ;
struct rc5t583 {int dev; int regmap; } ;
struct TYPE_8__ {int parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ RC5T583_IRQ_YALE ;
 int RC5T583_RTC_ADJ ;
 int RC5T583_RTC_CTL2 ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct rc5t583* dev_get_drvdata (int ) ;
 struct rc5t583_platform_data* dev_get_platdata (int ) ;
 int dev_warn (TYPE_1__*,char*,int) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct rc5t583_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int ,char*,TYPE_1__*) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rc5t583_rtc*) ;
 int rc5t583_rtc_interrupt ;
 int rc5t583_rtc_ops ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static int rc5t583_rtc_probe(struct platform_device *pdev)
{
 struct rc5t583 *rc5t583 = dev_get_drvdata(pdev->dev.parent);
 struct rc5t583_rtc *ricoh_rtc;
 struct rc5t583_platform_data *pmic_plat_data;
 int ret;
 int irq;

 ricoh_rtc = devm_kzalloc(&pdev->dev, sizeof(struct rc5t583_rtc),
   GFP_KERNEL);
 if (!ricoh_rtc)
  return -ENOMEM;

 platform_set_drvdata(pdev, ricoh_rtc);


 ret = regmap_write(rc5t583->regmap, RC5T583_RTC_CTL2, 0);
 if (ret < 0)
  return ret;


 ret = regmap_write(rc5t583->regmap, RC5T583_RTC_ADJ, 0);
 if (ret < 0) {
  dev_err(&pdev->dev, "unable to program rtc_adjust reg\n");
  return -EBUSY;
 }

 pmic_plat_data = dev_get_platdata(rc5t583->dev);
 irq = pmic_plat_data->irq_base;
 if (irq <= 0) {
  dev_warn(&pdev->dev, "Wake up is not possible as irq = %d\n",
   irq);
  return ret;
 }

 irq += RC5T583_IRQ_YALE;
 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
  rc5t583_rtc_interrupt, IRQF_TRIGGER_LOW,
  "rtc-rc5t583", &pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "IRQ is not free.\n");
  return ret;
 }
 device_init_wakeup(&pdev->dev, 1);

 ricoh_rtc->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
  &rc5t583_rtc_ops, THIS_MODULE);
 if (IS_ERR(ricoh_rtc->rtc)) {
  ret = PTR_ERR(ricoh_rtc->rtc);
  dev_err(&pdev->dev, "RTC device register: err %d\n", ret);
  return ret;
 }

 return 0;
}
