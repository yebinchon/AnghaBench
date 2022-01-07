
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int of_pwm_n_cells; int of_xlate; int npwm; int * ops; int * dev; } ;
struct jz4740_pwm_chip {TYPE_1__ chip; int clk; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int NUM_PWM ;
 int PTR_ERR (int ) ;
 int devm_clk_get (int *,char*) ;
 struct jz4740_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int jz4740_pwm_ops ;
 int of_pwm_xlate_with_flags ;
 int platform_set_drvdata (struct platform_device*,struct jz4740_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int jz4740_pwm_probe(struct platform_device *pdev)
{
 struct jz4740_pwm_chip *jz4740;

 jz4740 = devm_kzalloc(&pdev->dev, sizeof(*jz4740), GFP_KERNEL);
 if (!jz4740)
  return -ENOMEM;

 jz4740->clk = devm_clk_get(&pdev->dev, "ext");
 if (IS_ERR(jz4740->clk))
  return PTR_ERR(jz4740->clk);

 jz4740->chip.dev = &pdev->dev;
 jz4740->chip.ops = &jz4740_pwm_ops;
 jz4740->chip.npwm = NUM_PWM;
 jz4740->chip.base = -1;
 jz4740->chip.of_xlate = of_pwm_xlate_with_flags;
 jz4740->chip.of_pwm_n_cells = 3;

 platform_set_drvdata(pdev, jz4740);

 return pwmchip_add(&jz4740->chip);
}
