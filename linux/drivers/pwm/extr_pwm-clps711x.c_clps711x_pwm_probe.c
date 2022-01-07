
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * dev; int * ops; } ;
struct clps711x_chip {TYPE_1__ chip; int lock; int clk; int pmpcon; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clps711x_pwm_ops ;
 int clps711x_pwm_xlate ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct clps711x_chip* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct clps711x_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int clps711x_pwm_probe(struct platform_device *pdev)
{
 struct clps711x_chip *priv;
 struct resource *res;

 priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 priv->pmpcon = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(priv->pmpcon))
  return PTR_ERR(priv->pmpcon);

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);

 priv->chip.ops = &clps711x_pwm_ops;
 priv->chip.dev = &pdev->dev;
 priv->chip.base = -1;
 priv->chip.npwm = 2;
 priv->chip.of_xlate = clps711x_pwm_xlate;
 priv->chip.of_pwm_n_cells = 1;

 spin_lock_init(&priv->lock);

 platform_set_drvdata(pdev, priv);

 return pwmchip_add(&priv->chip);
}
