
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; int * dev; } ;
struct atmel_pwm_chip {int clk; TYPE_1__ chip; int base; scalar_t__ updated_pwms; int data; int isr_lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int atmel_pwm_ops ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct atmel_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int mutex_init (int *) ;
 int of_device_get_match_data (int *) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int atmel_pwm_probe(struct platform_device *pdev)
{
 struct atmel_pwm_chip *atmel_pwm;
 struct resource *res;
 int ret;

 atmel_pwm = devm_kzalloc(&pdev->dev, sizeof(*atmel_pwm), GFP_KERNEL);
 if (!atmel_pwm)
  return -ENOMEM;

 mutex_init(&atmel_pwm->isr_lock);
 atmel_pwm->data = of_device_get_match_data(&pdev->dev);
 atmel_pwm->updated_pwms = 0;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 atmel_pwm->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(atmel_pwm->base))
  return PTR_ERR(atmel_pwm->base);

 atmel_pwm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(atmel_pwm->clk))
  return PTR_ERR(atmel_pwm->clk);

 ret = clk_prepare(atmel_pwm->clk);
 if (ret) {
  dev_err(&pdev->dev, "failed to prepare PWM clock\n");
  return ret;
 }

 atmel_pwm->chip.dev = &pdev->dev;
 atmel_pwm->chip.ops = &atmel_pwm_ops;
 atmel_pwm->chip.of_xlate = of_pwm_xlate_with_flags;
 atmel_pwm->chip.of_pwm_n_cells = 3;
 atmel_pwm->chip.base = -1;
 atmel_pwm->chip.npwm = 4;

 ret = pwmchip_add(&atmel_pwm->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add PWM chip %d\n", ret);
  goto unprepare_clk;
 }

 platform_set_drvdata(pdev, atmel_pwm);

 return ret;

unprepare_clk:
 clk_unprepare(atmel_pwm->clk);
 return ret;
}
