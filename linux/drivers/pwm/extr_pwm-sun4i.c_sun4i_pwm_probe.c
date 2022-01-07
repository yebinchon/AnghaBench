
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int base; int of_pwm_n_cells; int of_xlate; int npwm; int * ops; int * dev; } ;
struct sun4i_pwm_chip {TYPE_1__ chip; int ctrl_lock; TYPE_2__* data; int clk; int base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int npwm; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct sun4i_pwm_chip* devm_kzalloc (int *,int,int ) ;
 TYPE_2__* of_device_get_match_data (int *) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sun4i_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int spin_lock_init (int *) ;
 int sun4i_pwm_ops ;

__attribute__((used)) static int sun4i_pwm_probe(struct platform_device *pdev)
{
 struct sun4i_pwm_chip *pwm;
 struct resource *res;
 int ret;

 pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
 if (!pwm)
  return -ENOMEM;

 pwm->data = of_device_get_match_data(&pdev->dev);
 if (!pwm->data)
  return -ENODEV;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pwm->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pwm->base))
  return PTR_ERR(pwm->base);

 pwm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm->clk))
  return PTR_ERR(pwm->clk);

 pwm->chip.dev = &pdev->dev;
 pwm->chip.ops = &sun4i_pwm_ops;
 pwm->chip.base = -1;
 pwm->chip.npwm = pwm->data->npwm;
 pwm->chip.of_xlate = of_pwm_xlate_with_flags;
 pwm->chip.of_pwm_n_cells = 3;

 spin_lock_init(&pwm->ctrl_lock);

 ret = pwmchip_add(&pwm->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, pwm);

 return 0;
}
