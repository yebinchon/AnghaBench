
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct platform_device {int dev; int name; } ;
struct mtk_rtc {int irq; int clk; int rtc; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*) ;
 int dev_name (int *) ;
 int device_init_wakeup (int *,int) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct mtk_rtc* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,int ,struct mtk_rtc*) ;
 int devm_rtc_device_register (int *,int ,int *,int ) ;
 int mtk_rtc_alarmirq ;
 int mtk_rtc_hw_init (struct mtk_rtc*) ;
 int mtk_rtc_ops ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mtk_rtc*) ;

__attribute__((used)) static int mtk_rtc_probe(struct platform_device *pdev)
{
 struct mtk_rtc *hw;
 struct resource *res;
 int ret;

 hw = devm_kzalloc(&pdev->dev, sizeof(*hw), GFP_KERNEL);
 if (!hw)
  return -ENOMEM;

 platform_set_drvdata(pdev, hw);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 hw->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(hw->base))
  return PTR_ERR(hw->base);

 hw->clk = devm_clk_get(&pdev->dev, "rtc");
 if (IS_ERR(hw->clk)) {
  dev_err(&pdev->dev, "No clock\n");
  return PTR_ERR(hw->clk);
 }

 ret = clk_prepare_enable(hw->clk);
 if (ret)
  return ret;

 hw->irq = platform_get_irq(pdev, 0);
 if (hw->irq < 0) {
  ret = hw->irq;
  goto err;
 }

 ret = devm_request_irq(&pdev->dev, hw->irq, mtk_rtc_alarmirq,
          0, dev_name(&pdev->dev), hw);
 if (ret) {
  dev_err(&pdev->dev, "Can't request IRQ\n");
  goto err;
 }

 mtk_rtc_hw_init(hw);

 device_init_wakeup(&pdev->dev, 1);

 hw->rtc = devm_rtc_device_register(&pdev->dev, pdev->name,
        &mtk_rtc_ops, THIS_MODULE);
 if (IS_ERR(hw->rtc)) {
  ret = PTR_ERR(hw->rtc);
  dev_err(&pdev->dev, "Unable to register device\n");
  goto err;
 }

 return 0;
err:
 clk_disable_unprepare(hw->clk);

 return ret;
}
