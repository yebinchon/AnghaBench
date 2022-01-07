
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct lpc32xx_rtc {int irq; TYPE_1__* rtc; int lock; TYPE_1__* rtc_base; } ;
struct TYPE_6__ {int range_max; int * ops; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int LPC32XX_RTC_CTRL ;
 int LPC32XX_RTC_CTRL_CNTR_DIS ;
 int LPC32XX_RTC_CTRL_MATCH0 ;
 int LPC32XX_RTC_CTRL_MATCH1 ;
 int LPC32XX_RTC_CTRL_ONSW_FORCE_HI ;
 int LPC32XX_RTC_CTRL_ONSW_MATCH0 ;
 int LPC32XX_RTC_CTRL_ONSW_MATCH1 ;
 int LPC32XX_RTC_CTRL_SW_RESET ;
 int LPC32XX_RTC_INTSTAT ;
 int LPC32XX_RTC_INTSTAT_MATCH0 ;
 int LPC32XX_RTC_INTSTAT_MATCH1 ;
 int LPC32XX_RTC_INTSTAT_ONSW ;
 int LPC32XX_RTC_KEY ;
 int LPC32XX_RTC_KEY_ONSW_LOADVAL ;
 int LPC32XX_RTC_MATCH0 ;
 int PTR_ERR (TYPE_1__*) ;
 int U32_MAX ;
 int dev_warn (int *,char*) ;
 int device_init_wakeup (int *,int) ;
 TYPE_1__* devm_ioremap_resource (int *,struct resource*) ;
 struct lpc32xx_rtc* devm_kzalloc (int *,int,int ) ;
 scalar_t__ devm_request_irq (int *,int,int ,int ,int ,struct lpc32xx_rtc*) ;
 TYPE_1__* devm_rtc_allocate_device (int *) ;
 int lpc32xx_rtc_alarm_interrupt ;
 int lpc32xx_rtc_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpc32xx_rtc*) ;
 int rtc_readl (struct lpc32xx_rtc*,int ) ;
 int rtc_register_device (TYPE_1__*) ;
 int rtc_writel (struct lpc32xx_rtc*,int ,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int lpc32xx_rtc_probe(struct platform_device *pdev)
{
 struct resource *res;
 struct lpc32xx_rtc *rtc;
 int err;
 u32 tmp;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (unlikely(!rtc))
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rtc->rtc_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rtc->rtc_base))
  return PTR_ERR(rtc->rtc_base);

 spin_lock_init(&rtc->lock);






 tmp = rtc_readl(rtc, LPC32XX_RTC_CTRL);
 if (rtc_readl(rtc, LPC32XX_RTC_KEY) != LPC32XX_RTC_KEY_ONSW_LOADVAL) {
  tmp &= ~(LPC32XX_RTC_CTRL_SW_RESET |
   LPC32XX_RTC_CTRL_CNTR_DIS |
   LPC32XX_RTC_CTRL_MATCH0 |
   LPC32XX_RTC_CTRL_MATCH1 |
   LPC32XX_RTC_CTRL_ONSW_MATCH0 |
   LPC32XX_RTC_CTRL_ONSW_MATCH1 |
   LPC32XX_RTC_CTRL_ONSW_FORCE_HI);
  rtc_writel(rtc, LPC32XX_RTC_CTRL, tmp);


  rtc_writel(rtc, LPC32XX_RTC_MATCH0, 0xFFFFFFFF);
  rtc_writel(rtc, LPC32XX_RTC_INTSTAT,
      LPC32XX_RTC_INTSTAT_MATCH0 |
      LPC32XX_RTC_INTSTAT_MATCH1 |
      LPC32XX_RTC_INTSTAT_ONSW);


  rtc_writel(rtc, LPC32XX_RTC_KEY,
      LPC32XX_RTC_KEY_ONSW_LOADVAL);
 } else {
  rtc_writel(rtc, LPC32XX_RTC_CTRL,
      tmp & ~LPC32XX_RTC_CTRL_MATCH0);
 }

 platform_set_drvdata(pdev, rtc);

 rtc->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc->rtc))
  return PTR_ERR(rtc->rtc);

 rtc->rtc->ops = &lpc32xx_rtc_ops;
 rtc->rtc->range_max = U32_MAX;

 err = rtc_register_device(rtc->rtc);
 if (err)
  return err;





 rtc->irq = platform_get_irq(pdev, 0);
 if (rtc->irq < 0) {
  dev_warn(&pdev->dev, "Can't get interrupt resource\n");
 } else {
  if (devm_request_irq(&pdev->dev, rtc->irq,
         lpc32xx_rtc_alarm_interrupt,
         0, pdev->name, rtc) < 0) {
   dev_warn(&pdev->dev, "Can't request interrupt.\n");
   rtc->irq = -1;
  } else {
   device_init_wakeup(&pdev->dev, 1);
  }
 }

 return 0;
}
