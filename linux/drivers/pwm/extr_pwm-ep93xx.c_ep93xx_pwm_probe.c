
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int npwm; int * ops; int * dev; } ;
struct ep93xx_pwm {TYPE_1__ chip; int clk; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct ep93xx_pwm* devm_kzalloc (int *,int,int ) ;
 int ep93xx_pwm_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ep93xx_pwm*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int ep93xx_pwm_probe(struct platform_device *pdev)
{
 struct ep93xx_pwm *ep93xx_pwm;
 struct resource *res;
 int ret;

 ep93xx_pwm = devm_kzalloc(&pdev->dev, sizeof(*ep93xx_pwm), GFP_KERNEL);
 if (!ep93xx_pwm)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ep93xx_pwm->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(ep93xx_pwm->base))
  return PTR_ERR(ep93xx_pwm->base);

 ep93xx_pwm->clk = devm_clk_get(&pdev->dev, "pwm_clk");
 if (IS_ERR(ep93xx_pwm->clk))
  return PTR_ERR(ep93xx_pwm->clk);

 ep93xx_pwm->chip.dev = &pdev->dev;
 ep93xx_pwm->chip.ops = &ep93xx_pwm_ops;
 ep93xx_pwm->chip.base = -1;
 ep93xx_pwm->chip.npwm = 1;

 ret = pwmchip_add(&ep93xx_pwm->chip);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, ep93xx_pwm);
 return 0;
}
