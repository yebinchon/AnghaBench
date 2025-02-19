
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
struct twl_rtc {scalar_t__ class; int* reg_map; int rtc_irq_bits; TYPE_1__* rtc; } ;
struct TYPE_12__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; int name; } ;
struct device_node {int dummy; } ;
struct TYPE_11__ {int dev; } ;


 int BIT_RTC_CTRL_REG_STOP_RTC_M ;
 int BIT_RTC_STATUS_REG_ALARM_M ;
 int BIT_RTC_STATUS_REG_POWER_UP_M ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 int REG_INT_MSK_LINE_A ;
 int REG_INT_MSK_STS_A ;
 int REG_RTC_CTRL_REG ;
 int REG_RTC_INTERRUPTS_REG ;
 int REG_RTC_STATUS_REG ;
 int THIS_MODULE ;
 int TWL6030_RTC_INT_MASK ;
 scalar_t__ TWL_4030 ;
 scalar_t__ TWL_6030 ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_info (TYPE_2__*,char*) ;
 int dev_name (int *) ;
 int dev_warn (TYPE_2__*,char*) ;
 int device_init_wakeup (TYPE_2__*,int) ;
 struct twl_rtc* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int *,int ,int,int ,struct twl_rtc*) ;
 TYPE_1__* devm_rtc_device_register (TYPE_2__*,int ,int *,int ) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct twl_rtc*) ;
 scalar_t__ twl4030_rtc_reg_map ;
 int twl6030_interrupt_unmask (int ,int ) ;
 scalar_t__ twl6030_rtc_reg_map ;
 scalar_t__ twl_class_is_4030 () ;
 scalar_t__ twl_class_is_6030 () ;
 int twl_rtc_interrupt ;
 int twl_rtc_ops ;
 int twl_rtc_read_u8 (struct twl_rtc*,int*,int ) ;
 int twl_rtc_write_u8 (struct twl_rtc*,int,int ) ;

__attribute__((used)) static int twl_rtc_probe(struct platform_device *pdev)
{
 struct twl_rtc *twl_rtc;
 struct device_node *np = pdev->dev.of_node;
 int ret = -EINVAL;
 int irq = platform_get_irq(pdev, 0);
 u8 rd_reg;

 if (!np) {
  dev_err(&pdev->dev, "no DT info\n");
  return -EINVAL;
 }

 if (irq <= 0)
  return ret;

 twl_rtc = devm_kzalloc(&pdev->dev, sizeof(*twl_rtc), GFP_KERNEL);
 if (!twl_rtc)
  return -ENOMEM;

 if (twl_class_is_4030()) {
  twl_rtc->class = TWL_4030;
  twl_rtc->reg_map = (u8 *)twl4030_rtc_reg_map;
 } else if (twl_class_is_6030()) {
  twl_rtc->class = TWL_6030;
  twl_rtc->reg_map = (u8 *)twl6030_rtc_reg_map;
 } else {
  dev_err(&pdev->dev, "TWL Class not supported.\n");
  return -EINVAL;
 }

 ret = twl_rtc_read_u8(twl_rtc, &rd_reg, REG_RTC_STATUS_REG);
 if (ret < 0)
  return ret;

 if (rd_reg & BIT_RTC_STATUS_REG_POWER_UP_M)
  dev_warn(&pdev->dev, "Power up reset detected.\n");

 if (rd_reg & BIT_RTC_STATUS_REG_ALARM_M)
  dev_warn(&pdev->dev, "Pending Alarm interrupt detected.\n");


 ret = twl_rtc_write_u8(twl_rtc, rd_reg, REG_RTC_STATUS_REG);
 if (ret < 0)
  return ret;

 if (twl_rtc->class == TWL_6030) {
  twl6030_interrupt_unmask(TWL6030_RTC_INT_MASK,
   REG_INT_MSK_LINE_A);
  twl6030_interrupt_unmask(TWL6030_RTC_INT_MASK,
   REG_INT_MSK_STS_A);
 }

 dev_info(&pdev->dev, "Enabling TWL-RTC\n");
 ret = twl_rtc_write_u8(twl_rtc, BIT_RTC_CTRL_REG_STOP_RTC_M,
          REG_RTC_CTRL_REG);
 if (ret < 0)
  return ret;


 ret = twl_rtc_write_u8(twl_rtc, 0, REG_RTC_INTERRUPTS_REG);
 if (ret < 0)
  dev_warn(&pdev->dev, "unable to disable interrupt\n");


 ret = twl_rtc_read_u8(twl_rtc, &twl_rtc->rtc_irq_bits,
         REG_RTC_INTERRUPTS_REG);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, twl_rtc);
 device_init_wakeup(&pdev->dev, 1);

 twl_rtc->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
     &twl_rtc_ops, THIS_MODULE);
 if (IS_ERR(twl_rtc->rtc)) {
  dev_err(&pdev->dev, "can't register RTC device, err %ld\n",
   PTR_ERR(twl_rtc->rtc));
  return PTR_ERR(twl_rtc->rtc);
 }

 ret = devm_request_threaded_irq(&pdev->dev, irq, ((void*)0),
     twl_rtc_interrupt,
     IRQF_TRIGGER_RISING | IRQF_ONESHOT,
     dev_name(&twl_rtc->rtc->dev), twl_rtc);
 if (ret < 0) {
  dev_err(&pdev->dev, "IRQ is not free.\n");
  return ret;
 }

 return 0;
}
