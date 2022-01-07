
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int npwm; int * ops; int * dev; } ;
struct sprd_pwm_chip {TYPE_1__ chip; int num_pwms; int * dev; int base; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*) ;
 struct sprd_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sprd_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int sprd_pwm_clk_init (struct sprd_pwm_chip*) ;
 int sprd_pwm_ops ;

__attribute__((used)) static int sprd_pwm_probe(struct platform_device *pdev)
{
 struct sprd_pwm_chip *spc;
 int ret;

 spc = devm_kzalloc(&pdev->dev, sizeof(*spc), GFP_KERNEL);
 if (!spc)
  return -ENOMEM;

 spc->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(spc->base))
  return PTR_ERR(spc->base);

 spc->dev = &pdev->dev;
 platform_set_drvdata(pdev, spc);

 ret = sprd_pwm_clk_init(spc);
 if (ret)
  return ret;

 spc->chip.dev = &pdev->dev;
 spc->chip.ops = &sprd_pwm_ops;
 spc->chip.base = -1;
 spc->chip.npwm = spc->num_pwms;

 ret = pwmchip_add(&spc->chip);
 if (ret)
  dev_err(&pdev->dev, "failed to add PWM chip\n");

 return ret;
}
