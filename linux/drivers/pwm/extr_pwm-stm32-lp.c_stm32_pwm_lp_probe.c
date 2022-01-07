
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * ops; TYPE_2__* dev; } ;
struct stm32_pwm_lp {TYPE_1__ chip; int clk; int regmap; } ;
struct stm32_lptimer {int clk; int regmap; } ;
struct TYPE_4__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct stm32_lptimer* dev_get_drvdata (int ) ;
 struct stm32_pwm_lp* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_pwm_xlate_with_flags ;
 int platform_set_drvdata (struct platform_device*,struct stm32_pwm_lp*) ;
 int pwmchip_add (TYPE_1__*) ;
 int stm32_pwm_lp_ops ;

__attribute__((used)) static int stm32_pwm_lp_probe(struct platform_device *pdev)
{
 struct stm32_lptimer *ddata = dev_get_drvdata(pdev->dev.parent);
 struct stm32_pwm_lp *priv;
 int ret;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->regmap = ddata->regmap;
 priv->clk = ddata->clk;
 priv->chip.base = -1;
 priv->chip.dev = &pdev->dev;
 priv->chip.ops = &stm32_pwm_lp_ops;
 priv->chip.npwm = 1;
 priv->chip.of_xlate = of_pwm_xlate_with_flags;
 priv->chip.of_pwm_n_cells = 3;

 ret = pwmchip_add(&priv->chip);
 if (ret < 0)
  return ret;

 platform_set_drvdata(pdev, priv);

 return 0;
}
