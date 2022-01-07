
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int npwm; int * ops; int * dev; } ;
struct tegra_pwm_chip {int rst; TYPE_1__ chip; TYPE_2__* soc; int clk; int clk_rate; int regs; int * dev; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int num_channels; int max_frequency; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get_rate (int ) ;
 int clk_set_rate (int ,int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct tegra_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int devm_reset_control_get_exclusive (int *,char*) ;
 TYPE_2__* of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct tegra_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;
 int tegra_pwm_ops ;

__attribute__((used)) static int tegra_pwm_probe(struct platform_device *pdev)
{
 struct tegra_pwm_chip *pwm;
 struct resource *r;
 int ret;

 pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
 if (!pwm)
  return -ENOMEM;

 pwm->soc = of_device_get_match_data(&pdev->dev);
 pwm->dev = &pdev->dev;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pwm->regs = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(pwm->regs))
  return PTR_ERR(pwm->regs);

 platform_set_drvdata(pdev, pwm);

 pwm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm->clk))
  return PTR_ERR(pwm->clk);


 ret = clk_set_rate(pwm->clk, pwm->soc->max_frequency);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to set max frequency: %d\n", ret);
  return ret;
 }






 pwm->clk_rate = clk_get_rate(pwm->clk);

 pwm->rst = devm_reset_control_get_exclusive(&pdev->dev, "pwm");
 if (IS_ERR(pwm->rst)) {
  ret = PTR_ERR(pwm->rst);
  dev_err(&pdev->dev, "Reset control is not found: %d\n", ret);
  return ret;
 }

 reset_control_deassert(pwm->rst);

 pwm->chip.dev = &pdev->dev;
 pwm->chip.ops = &tegra_pwm_ops;
 pwm->chip.base = -1;
 pwm->chip.npwm = pwm->soc->num_channels;

 ret = pwmchip_add(&pwm->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
  reset_control_assert(pwm->rst);
  return ret;
 }

 return 0;
}
