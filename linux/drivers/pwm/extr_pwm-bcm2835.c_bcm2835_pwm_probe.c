
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int npwm; int of_pwm_n_cells; int of_xlate; int * ops; int * dev; } ;
struct bcm2835_pwm {int clk; TYPE_1__ chip; int base; int * dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int bcm2835_pwm_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct bcm2835_pwm* devm_kzalloc (int *,int,int ) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bcm2835_pwm*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int bcm2835_pwm_probe(struct platform_device *pdev)
{
 struct bcm2835_pwm *pc;
 struct resource *res;
 int ret;

 pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 pc->dev = &pdev->dev;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pc->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pc->base))
  return PTR_ERR(pc->base);

 pc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pc->clk)) {
  ret = PTR_ERR(pc->clk);
  if (ret != -EPROBE_DEFER)
   dev_err(&pdev->dev, "clock not found: %d\n", ret);

  return ret;
 }

 ret = clk_prepare_enable(pc->clk);
 if (ret)
  return ret;

 pc->chip.dev = &pdev->dev;
 pc->chip.ops = &bcm2835_pwm_ops;
 pc->chip.npwm = 2;
 pc->chip.of_xlate = of_pwm_xlate_with_flags;
 pc->chip.of_pwm_n_cells = 3;

 platform_set_drvdata(pdev, pc);

 ret = pwmchip_add(&pc->chip);
 if (ret < 0)
  goto add_fail;

 return 0;

add_fail:
 clk_disable_unprepare(pc->clk);
 return ret;
}
