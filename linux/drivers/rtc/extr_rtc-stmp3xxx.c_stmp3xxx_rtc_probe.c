
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u32 ;
struct stmp3xxx_rtc_data {int irq_alarm; TYPE_1__* rtc; scalar_t__ io; } ;
struct resource {int start; } ;
struct TYPE_14__ {int of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_13__ {int range_max; int * ops; } ;


 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int PTR_ERR (TYPE_1__*) ;
 scalar_t__ STMP3XXX_RTC_CTRL ;
 int STMP3XXX_RTC_CTRL_ALARM_IRQ_EN ;
 int STMP3XXX_RTC_CTRL_ONEMSEC_IRQ_EN ;
 int STMP3XXX_RTC_CTRL_WATCHDOGEN ;
 scalar_t__ STMP3XXX_RTC_PERSISTENT0 ;
 int STMP3XXX_RTC_PERSISTENT0_ALARM_EN ;
 int STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE ;
 int STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN ;
 int STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE ;
 int STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP ;
 int STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP ;
 int STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ ;
 scalar_t__ STMP3XXX_RTC_STAT ;
 int STMP3XXX_RTC_STAT_RTC_PRESENT ;
 int STMP3XXX_RTC_STAT_XTAL32000_PRESENT ;
 int STMP3XXX_RTC_STAT_XTAL32768_PRESENT ;
 scalar_t__ STMP_OFFSET_REG_CLR ;
 scalar_t__ STMP_OFFSET_REG_SET ;
 int U32_MAX ;
 int dev_err (TYPE_3__*,char*,...) ;
 int dev_info (TYPE_3__*,char*) ;
 int dev_warn (TYPE_3__*,char*) ;
 scalar_t__ devm_ioremap (TYPE_3__*,int ,int ) ;
 struct stmp3xxx_rtc_data* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_request_irq (TYPE_3__*,int,int ,int ,char*,TYPE_3__*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_3__*) ;
 int of_property_read_u32 (int ,char*,int*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct stmp3xxx_rtc_data*) ;
 int readl (scalar_t__) ;
 int resource_size (struct resource*) ;
 int rtc_register_device (TYPE_1__*) ;
 int stmp3xxx_rtc_interrupt ;
 int stmp3xxx_rtc_ops ;
 int stmp3xxx_wdt_register (struct platform_device*) ;
 int stmp_reset_block (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int stmp3xxx_rtc_probe(struct platform_device *pdev)
{
 struct stmp3xxx_rtc_data *rtc_data;
 struct resource *r;
 u32 rtc_stat;
 u32 pers0_set, pers0_clr;
 u32 crystalfreq = 0;
 int err;

 rtc_data = devm_kzalloc(&pdev->dev, sizeof(*rtc_data), GFP_KERNEL);
 if (!rtc_data)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!r) {
  dev_err(&pdev->dev, "failed to get resource\n");
  return -ENXIO;
 }

 rtc_data->io = devm_ioremap(&pdev->dev, r->start, resource_size(r));
 if (!rtc_data->io) {
  dev_err(&pdev->dev, "ioremap failed\n");
  return -EIO;
 }

 rtc_data->irq_alarm = platform_get_irq(pdev, 0);

 rtc_stat = readl(rtc_data->io + STMP3XXX_RTC_STAT);
 if (!(rtc_stat & STMP3XXX_RTC_STAT_RTC_PRESENT)) {
  dev_err(&pdev->dev, "no device onboard\n");
  return -ENODEV;
 }

 platform_set_drvdata(pdev, rtc_data);






 if (readl(rtc_data->io + STMP3XXX_RTC_CTRL) &
     STMP3XXX_RTC_CTRL_WATCHDOGEN) {
  dev_info(&pdev->dev,
    "Watchdog is running, skip resetting rtc\n");
 } else {
  err = stmp_reset_block(rtc_data->io);
  if (err) {
   dev_err(&pdev->dev, "stmp_reset_block failed: %d\n",
    err);
   return err;
  }
 }
 if (rtc_stat & STMP3XXX_RTC_STAT_XTAL32000_PRESENT)
  crystalfreq = 32000;
 else if (rtc_stat & STMP3XXX_RTC_STAT_XTAL32768_PRESENT)
  crystalfreq = 32768;

 of_property_read_u32(pdev->dev.of_node, "stmp,crystal-freq",
        &crystalfreq);

 switch (crystalfreq) {
 case 32000:

  pers0_set = STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ |
   STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP |
   STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE;
  pers0_clr = STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP;
  break;
 case 32768:

  pers0_set = STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP |
   STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE;
  pers0_clr = STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP |
   STMP3XXX_RTC_PERSISTENT0_XTAL32_FREQ;
  break;
 default:
  dev_warn(&pdev->dev,
    "invalid crystal-freq specified in device-tree. Assuming no crystal\n");

 case 0:

  pers0_set = STMP3XXX_RTC_PERSISTENT0_XTAL24MHZ_PWRUP;
  pers0_clr = STMP3XXX_RTC_PERSISTENT0_XTAL32KHZ_PWRUP |
   STMP3XXX_RTC_PERSISTENT0_CLOCKSOURCE;
 }

 writel(pers0_set, rtc_data->io + STMP3XXX_RTC_PERSISTENT0 +
   STMP_OFFSET_REG_SET);

 writel(STMP3XXX_RTC_PERSISTENT0_ALARM_EN |
   STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE_EN |
   STMP3XXX_RTC_PERSISTENT0_ALARM_WAKE | pers0_clr,
  rtc_data->io + STMP3XXX_RTC_PERSISTENT0 + STMP_OFFSET_REG_CLR);

 writel(STMP3XXX_RTC_CTRL_ONEMSEC_IRQ_EN |
   STMP3XXX_RTC_CTRL_ALARM_IRQ_EN,
  rtc_data->io + STMP3XXX_RTC_CTRL + STMP_OFFSET_REG_CLR);

 rtc_data->rtc = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc_data->rtc))
  return PTR_ERR(rtc_data->rtc);

 err = devm_request_irq(&pdev->dev, rtc_data->irq_alarm,
   stmp3xxx_rtc_interrupt, 0, "RTC alarm", &pdev->dev);
 if (err) {
  dev_err(&pdev->dev, "Cannot claim IRQ%d\n",
   rtc_data->irq_alarm);
  return err;
 }

 rtc_data->rtc->ops = &stmp3xxx_rtc_ops;
 rtc_data->rtc->range_max = U32_MAX;

 err = rtc_register_device(rtc_data->rtc);
 if (err)
  return err;

 stmp3xxx_wdt_register(pdev);
 return 0;
}
