
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef unsigned int u32 ;
struct sam9_rtc {int irq; TYPE_1__* sclk; TYPE_1__* rtcdev; TYPE_1__* gpbr; int gpbr_offset; TYPE_1__* rtt; int lock; } ;
struct resource {int dummy; } ;
struct TYPE_22__ {int of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct of_phandle_args {int * args; int np; } ;
struct TYPE_21__ {int dev; int range_max; int * ops; } ;


 unsigned int AT91_RTT_ALMIEN ;
 unsigned int AT91_RTT_RTPRES ;
 unsigned int AT91_RTT_RTTINCIEN ;
 unsigned int AT91_RTT_RTTRST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IRQF_COND_SUSPEND ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (TYPE_1__*) ;
 int MR ;
 int PTR_ERR (TYPE_1__*) ;
 int U32_MAX ;
 int at91_rtc_interrupt ;
 int at91_rtc_ops ;
 int clk_disable_unprepare (TYPE_1__*) ;
 unsigned int clk_get_rate (TYPE_1__*) ;
 int clk_prepare_enable (TYPE_1__*) ;
 int dev_dbg (TYPE_4__*,char*,int) ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_name (int *) ;
 int dev_warn (TYPE_4__*,char*,int ) ;
 int device_can_wakeup (TYPE_4__*) ;
 int device_init_wakeup (TYPE_4__*,int) ;
 TYPE_1__* devm_clk_get (TYPE_4__*,int *) ;
 TYPE_1__* devm_ioremap_resource (TYPE_4__*,struct resource*) ;
 struct sam9_rtc* devm_kzalloc (TYPE_4__*,int,int ) ;
 int devm_request_irq (TYPE_4__*,int,int ,int,int ,struct sam9_rtc*) ;
 TYPE_1__* devm_rtc_allocate_device (TYPE_4__*) ;
 scalar_t__ gpbr_readl (struct sam9_rtc*) ;
 int gpbr_writel (struct sam9_rtc*,int ) ;
 int of_parse_phandle_with_fixed_args (int ,char*,int,int ,struct of_phandle_args*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sam9_rtc*) ;
 int rtc_register_device (TYPE_1__*) ;
 unsigned int rtt_readl (struct sam9_rtc*,int ) ;
 int rtt_writel (struct sam9_rtc*,int ,unsigned int) ;
 int spin_lock_init (int *) ;
 TYPE_1__* syscon_node_to_regmap (int ) ;

__attribute__((used)) static int at91_rtc_probe(struct platform_device *pdev)
{
 struct resource *r;
 struct sam9_rtc *rtc;
 int ret, irq;
 u32 mr;
 unsigned int sclk_rate;
 struct of_phandle_args args;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 spin_lock_init(&rtc->lock);
 rtc->irq = irq;


 if (!device_can_wakeup(&pdev->dev))
  device_init_wakeup(&pdev->dev, 1);

 platform_set_drvdata(pdev, rtc);

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rtc->rtt = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(rtc->rtt))
  return PTR_ERR(rtc->rtt);

 ret = of_parse_phandle_with_fixed_args(pdev->dev.of_node,
            "atmel,rtt-rtc-time-reg", 1, 0,
            &args);
 if (ret)
  return ret;

 rtc->gpbr = syscon_node_to_regmap(args.np);
 rtc->gpbr_offset = args.args[0];
 if (IS_ERR(rtc->gpbr)) {
  dev_err(&pdev->dev, "failed to retrieve gpbr regmap, aborting.\n");
  return -ENOMEM;
 }

 rtc->sclk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(rtc->sclk))
  return PTR_ERR(rtc->sclk);

 ret = clk_prepare_enable(rtc->sclk);
 if (ret) {
  dev_err(&pdev->dev, "Could not enable slow clock\n");
  return ret;
 }

 sclk_rate = clk_get_rate(rtc->sclk);
 if (!sclk_rate || sclk_rate > AT91_RTT_RTPRES) {
  dev_err(&pdev->dev, "Invalid slow clock rate\n");
  ret = -EINVAL;
  goto err_clk;
 }

 mr = rtt_readl(rtc, MR);


 if ((mr & AT91_RTT_RTPRES) != sclk_rate) {
  mr = AT91_RTT_RTTRST | (sclk_rate & AT91_RTT_RTPRES);
  gpbr_writel(rtc, 0);
 }


 mr &= ~(AT91_RTT_ALMIEN | AT91_RTT_RTTINCIEN);
 rtt_writel(rtc, MR, mr);

 rtc->rtcdev = devm_rtc_allocate_device(&pdev->dev);
 if (IS_ERR(rtc->rtcdev)) {
  ret = PTR_ERR(rtc->rtcdev);
  goto err_clk;
 }

 rtc->rtcdev->ops = &at91_rtc_ops;
 rtc->rtcdev->range_max = U32_MAX;


 ret = devm_request_irq(&pdev->dev, rtc->irq, at91_rtc_interrupt,
          IRQF_SHARED | IRQF_COND_SUSPEND,
          dev_name(&rtc->rtcdev->dev), rtc);
 if (ret) {
  dev_dbg(&pdev->dev, "can't share IRQ %d?\n", rtc->irq);
  goto err_clk;
 }







 if (gpbr_readl(rtc) == 0)
  dev_warn(&pdev->dev, "%s: SET TIME!\n",
    dev_name(&rtc->rtcdev->dev));

 return rtc_register_device(rtc->rtcdev);

err_clk:
 clk_disable_unprepare(rtc->sclk);

 return ret;
}
