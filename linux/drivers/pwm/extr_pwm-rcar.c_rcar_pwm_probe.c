
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int base; int npwm; int * ops; int * dev; } ;
struct rcar_pwm_chip {TYPE_1__ chip; int clk; int base; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct rcar_pwm_chip* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rcar_pwm_chip*) ;
 int pm_runtime_enable (int *) ;
 int pwmchip_add (TYPE_1__*) ;
 int rcar_pwm_ops ;

__attribute__((used)) static int rcar_pwm_probe(struct platform_device *pdev)
{
 struct rcar_pwm_chip *rcar_pwm;
 struct resource *res;
 int ret;

 rcar_pwm = devm_kzalloc(&pdev->dev, sizeof(*rcar_pwm), GFP_KERNEL);
 if (rcar_pwm == ((void*)0))
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 rcar_pwm->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(rcar_pwm->base))
  return PTR_ERR(rcar_pwm->base);

 rcar_pwm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(rcar_pwm->clk)) {
  dev_err(&pdev->dev, "cannot get clock\n");
  return PTR_ERR(rcar_pwm->clk);
 }

 platform_set_drvdata(pdev, rcar_pwm);

 rcar_pwm->chip.dev = &pdev->dev;
 rcar_pwm->chip.ops = &rcar_pwm_ops;
 rcar_pwm->chip.base = -1;
 rcar_pwm->chip.npwm = 1;

 ret = pwmchip_add(&rcar_pwm->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to register PWM chip: %d\n", ret);
  return ret;
 }

 pm_runtime_enable(&pdev->dev);

 return 0;
}
