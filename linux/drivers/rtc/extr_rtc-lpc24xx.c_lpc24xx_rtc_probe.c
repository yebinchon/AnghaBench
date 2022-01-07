
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct lpc24xx_rtc {void* clk_rtc; void* clk_reg; void* rtc; void* rtc_base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int LPC178X_CCALEN ;
 int LPC24XX_CCR ;
 int LPC24XX_CLKEN ;
 int LPC24XX_ILR ;
 int LPC24XX_RTCALF ;
 int LPC24XX_RTCCIF ;
 int PTR_ERR (void*) ;
 int THIS_MODULE ;
 int clk_disable_unprepare (void*) ;
 int clk_prepare_enable (void*) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct lpc24xx_rtc* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct lpc24xx_rtc*) ;
 void* devm_rtc_device_register (int *,char*,int *,int ) ;
 int lpc24xx_rtc_interrupt ;
 int lpc24xx_rtc_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpc24xx_rtc*) ;
 int rtc_writel (struct lpc24xx_rtc*,int ,int) ;

__attribute__((used)) static int lpc24xx_rtc_probe(struct platform_device *pdev)
{
 struct lpc24xx_rtc *rtc;
 struct resource *res;
 int irq, ret;

 rtc = devm_kzalloc(&pdev->dev, sizeof(*rtc), GFP_KERNEL);
 if (!rtc)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rtc->rtc_base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rtc->rtc_base))
  return PTR_ERR(rtc->rtc_base);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  dev_warn(&pdev->dev, "can't get interrupt resource\n");
  return irq;
 }

 rtc->clk_rtc = devm_clk_get(&pdev->dev, "rtc");
 if (IS_ERR(rtc->clk_rtc)) {
  dev_err(&pdev->dev, "error getting rtc clock\n");
  return PTR_ERR(rtc->clk_rtc);
 }

 rtc->clk_reg = devm_clk_get(&pdev->dev, "reg");
 if (IS_ERR(rtc->clk_reg)) {
  dev_err(&pdev->dev, "error getting reg clock\n");
  return PTR_ERR(rtc->clk_reg);
 }

 ret = clk_prepare_enable(rtc->clk_rtc);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable rtc clock\n");
  return ret;
 }

 ret = clk_prepare_enable(rtc->clk_reg);
 if (ret) {
  dev_err(&pdev->dev, "unable to enable reg clock\n");
  goto disable_rtc_clk;
 }

 platform_set_drvdata(pdev, rtc);


 rtc_writel(rtc, LPC24XX_ILR, LPC24XX_RTCCIF | LPC24XX_RTCALF);


 rtc_writel(rtc, LPC24XX_CCR, LPC24XX_CLKEN | LPC178X_CCALEN);

 ret = devm_request_irq(&pdev->dev, irq, lpc24xx_rtc_interrupt, 0,
          pdev->name, rtc);
 if (ret < 0) {
  dev_warn(&pdev->dev, "can't request interrupt\n");
  goto disable_clks;
 }

 rtc->rtc = devm_rtc_device_register(&pdev->dev, "lpc24xx-rtc",
         &lpc24xx_rtc_ops, THIS_MODULE);
 if (IS_ERR(rtc->rtc)) {
  dev_err(&pdev->dev, "can't register rtc device\n");
  ret = PTR_ERR(rtc->rtc);
  goto disable_clks;
 }

 return 0;

disable_clks:
 clk_disable_unprepare(rtc->clk_reg);
disable_rtc_clk:
 clk_disable_unprepare(rtc->clk_rtc);
 return ret;
}
