
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * ops; int * dev; } ;
struct berlin_pwm_chip {int clk; TYPE_1__ chip; int base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int berlin_pwm_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct berlin_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct berlin_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int berlin_pwm_probe(struct platform_device *pdev)
{
 struct berlin_pwm_chip *pwm;
 struct resource *res;
 int ret;

 pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
 if (!pwm)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pwm->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pwm->base))
  return PTR_ERR(pwm->base);

 pwm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm->clk))
  return PTR_ERR(pwm->clk);

 ret = clk_prepare_enable(pwm->clk);
 if (ret)
  return ret;

 pwm->chip.dev = &pdev->dev;
 pwm->chip.ops = &berlin_pwm_ops;
 pwm->chip.base = -1;
 pwm->chip.npwm = 4;
 pwm->chip.of_xlate = of_pwm_xlate_with_flags;
 pwm->chip.of_pwm_n_cells = 3;

 ret = pwmchip_add(&pwm->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
  clk_disable_unprepare(pwm->clk);
  return ret;
 }

 platform_set_drvdata(pdev, pwm);

 return 0;
}
