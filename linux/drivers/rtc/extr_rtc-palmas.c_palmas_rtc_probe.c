
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct palmas_rtc {int irq; int rtc; TYPE_1__* dev; } ;
struct palmas {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (int ) ;
 int PALMAS_BACKUP_BATTERY_CTRL ;
 unsigned int PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG ;
 unsigned int PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN ;
 int PALMAS_PMU_CONTROL_BASE ;
 int PALMAS_RTC_BASE ;
 int PALMAS_RTC_CTRL_REG ;
 unsigned int PALMAS_RTC_CTRL_REG_STOP_RTC ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,int) ;
 struct palmas* dev_get_drvdata (int ) ;
 int dev_name (TYPE_1__*) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct palmas_rtc* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_1__*,int ,int *,int ,int,int ,struct palmas_rtc*) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int of_property_read_bool (scalar_t__,char*) ;
 int palmas_clear_interrupts (TYPE_1__*) ;
 int palmas_rtc_interrupt ;
 int palmas_rtc_ops ;
 int palmas_update_bits (struct palmas*,int ,int ,unsigned int,unsigned int) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct palmas_rtc*) ;

__attribute__((used)) static int palmas_rtc_probe(struct platform_device *pdev)
{
 struct palmas *palmas = dev_get_drvdata(pdev->dev.parent);
 struct palmas_rtc *palmas_rtc = ((void*)0);
 int ret;
 bool enable_bb_charging = 0;
 bool high_bb_charging = 0;

 if (pdev->dev.of_node) {
  enable_bb_charging = of_property_read_bool(pdev->dev.of_node,
     "ti,backup-battery-chargeable");
  high_bb_charging = of_property_read_bool(pdev->dev.of_node,
     "ti,backup-battery-charge-high-current");
 }

 palmas_rtc = devm_kzalloc(&pdev->dev, sizeof(struct palmas_rtc),
   GFP_KERNEL);
 if (!palmas_rtc)
  return -ENOMEM;


 ret = palmas_clear_interrupts(&pdev->dev);
 if (ret < 0) {
  dev_err(&pdev->dev, "clear RTC int failed, err = %d\n", ret);
  return ret;
 }

 palmas_rtc->dev = &pdev->dev;
 platform_set_drvdata(pdev, palmas_rtc);

 if (enable_bb_charging) {
  unsigned reg = PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG;

  if (high_bb_charging)
   reg = 0;

  ret = palmas_update_bits(palmas, PALMAS_PMU_CONTROL_BASE,
   PALMAS_BACKUP_BATTERY_CTRL,
   PALMAS_BACKUP_BATTERY_CTRL_BBS_BBC_LOW_ICHRG, reg);
  if (ret < 0) {
   dev_err(&pdev->dev,
    "BACKUP_BATTERY_CTRL update failed, %d\n", ret);
   return ret;
  }

  ret = palmas_update_bits(palmas, PALMAS_PMU_CONTROL_BASE,
   PALMAS_BACKUP_BATTERY_CTRL,
   PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN,
   PALMAS_BACKUP_BATTERY_CTRL_BB_CHG_EN);
  if (ret < 0) {
   dev_err(&pdev->dev,
    "BACKUP_BATTERY_CTRL update failed, %d\n", ret);
   return ret;
  }
 }


 ret = palmas_update_bits(palmas, PALMAS_RTC_BASE, PALMAS_RTC_CTRL_REG,
   PALMAS_RTC_CTRL_REG_STOP_RTC,
   PALMAS_RTC_CTRL_REG_STOP_RTC);
 if (ret < 0) {
  dev_err(&pdev->dev, "RTC_CTRL write failed, err = %d\n", ret);
  return ret;
 }

 palmas_rtc->irq = platform_get_irq(pdev, 0);

 device_init_wakeup(&pdev->dev, 1);
 palmas_rtc->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
    &palmas_rtc_ops, THIS_MODULE);
 if (IS_ERR(palmas_rtc->rtc)) {
  ret = PTR_ERR(palmas_rtc->rtc);
  dev_err(&pdev->dev, "RTC register failed, err = %d\n", ret);
  return ret;
 }

 ret = devm_request_threaded_irq(&pdev->dev, palmas_rtc->irq, ((void*)0),
   palmas_rtc_interrupt,
   IRQF_TRIGGER_LOW | IRQF_ONESHOT,
   dev_name(&pdev->dev), palmas_rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "IRQ request failed, err = %d\n", ret);
  return ret;
 }

 return 0;
}
