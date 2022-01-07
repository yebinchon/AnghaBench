
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct sirfsoc_rtc_drv {int irq; int rtc; int overflow_rtc; int regmap; int rtc_base; int lock; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int RTC_ALARM0 ;
 int RTC_ALARM1 ;
 int RTC_CLOCK_SWITCH ;
 int RTC_DIV ;
 int RTC_HZ ;
 int RTC_SW_VALUE ;
 int SIRFSOC_RTC_CLK ;
 int THIS_MODULE ;
 int dev_err (TYPE_1__*,char*,...) ;
 int device_init_wakeup (TYPE_1__*,int) ;
 struct sirfsoc_rtc_drv* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_regmap_init_iobg (TYPE_1__*,int *) ;
 int devm_request_irq (TYPE_1__*,int ,int ,int ,int ,struct sirfsoc_rtc_drv*) ;
 int devm_rtc_device_register (TYPE_1__*,int ,int *,int ) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sirfsoc_rtc_drv*) ;
 int sirfsoc_rtc_irq_handler ;
 int sirfsoc_rtc_ops ;
 int sirfsoc_rtc_readl (struct sirfsoc_rtc_drv*,int ) ;
 int sirfsoc_rtc_writel (struct sirfsoc_rtc_drv*,int ,int) ;
 int spin_lock_init (int *) ;
 int sysrtc_regmap_config ;

__attribute__((used)) static int sirfsoc_rtc_probe(struct platform_device *pdev)
{
 int err;
 unsigned long rtc_div;
 struct sirfsoc_rtc_drv *rtcdrv;
 struct device_node *np = pdev->dev.of_node;

 rtcdrv = devm_kzalloc(&pdev->dev,
  sizeof(struct sirfsoc_rtc_drv), GFP_KERNEL);
 if (rtcdrv == ((void*)0))
  return -ENOMEM;

 spin_lock_init(&rtcdrv->lock);

 err = of_property_read_u32(np, "reg", &rtcdrv->rtc_base);
 if (err) {
  dev_err(&pdev->dev, "unable to find base address of rtc node in dtb\n");
  return err;
 }

 platform_set_drvdata(pdev, rtcdrv);


 device_init_wakeup(&pdev->dev, 1);

 rtcdrv->regmap = devm_regmap_init_iobg(&pdev->dev,
   &sysrtc_regmap_config);
 if (IS_ERR(rtcdrv->regmap)) {
  err = PTR_ERR(rtcdrv->regmap);
  dev_err(&pdev->dev, "Failed to allocate register map: %d\n",
   err);
  return err;
 }






 rtc_div = ((32768 / RTC_HZ) / 2) - 1;
 sirfsoc_rtc_writel(rtcdrv, RTC_DIV, rtc_div);


 sirfsoc_rtc_writel(rtcdrv, RTC_CLOCK_SWITCH, SIRFSOC_RTC_CLK);


 sirfsoc_rtc_writel(rtcdrv, RTC_ALARM0, 0x0);


 sirfsoc_rtc_writel(rtcdrv, RTC_ALARM1, 0x0);


 rtcdrv->overflow_rtc =
  sirfsoc_rtc_readl(rtcdrv, RTC_SW_VALUE);

 rtcdrv->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
   &sirfsoc_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtcdrv->rtc)) {
  err = PTR_ERR(rtcdrv->rtc);
  dev_err(&pdev->dev, "can't register RTC device\n");
  return err;
 }

 rtcdrv->irq = platform_get_irq(pdev, 0);
 err = devm_request_irq(
   &pdev->dev,
   rtcdrv->irq,
   sirfsoc_rtc_irq_handler,
   IRQF_SHARED,
   pdev->name,
   rtcdrv);
 if (err) {
  dev_err(&pdev->dev, "Unable to register for the SiRF SOC RTC IRQ\n");
  return err;
 }

 return 0;
}
