
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * ops; int * dev; } ;
struct pxa_pwm_chip {TYPE_1__ chip; int mmio_base; int clk; } ;
struct platform_device_id {int driver_data; } ;
struct platform_device {int dev; } ;


 int CONFIG_OF ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HAS_SECONDARY_PWM ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ENABLED (int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct pxa_pwm_chip* devm_kzalloc (int *,int,int ) ;
 struct platform_device_id* platform_get_device_id (struct platform_device*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pxa_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 struct platform_device_id* pxa_pwm_get_id_dt (int *) ;
 int pxa_pwm_of_xlate ;
 int pxa_pwm_ops ;

__attribute__((used)) static int pwm_probe(struct platform_device *pdev)
{
 const struct platform_device_id *id = platform_get_device_id(pdev);
 struct pxa_pwm_chip *pwm;
 struct resource *r;
 int ret = 0;

 if (IS_ENABLED(CONFIG_OF) && id == ((void*)0))
  id = pxa_pwm_get_id_dt(&pdev->dev);

 if (id == ((void*)0))
  return -EINVAL;

 pwm = devm_kzalloc(&pdev->dev, sizeof(*pwm), GFP_KERNEL);
 if (pwm == ((void*)0))
  return -ENOMEM;

 pwm->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm->clk))
  return PTR_ERR(pwm->clk);

 pwm->chip.dev = &pdev->dev;
 pwm->chip.ops = &pxa_pwm_ops;
 pwm->chip.base = -1;
 pwm->chip.npwm = (id->driver_data & HAS_SECONDARY_PWM) ? 2 : 1;

 if (IS_ENABLED(CONFIG_OF)) {
  pwm->chip.of_xlate = pxa_pwm_of_xlate;
  pwm->chip.of_pwm_n_cells = 1;
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pwm->mmio_base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(pwm->mmio_base))
  return PTR_ERR(pwm->mmio_base);

 ret = pwmchip_add(&pwm->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, pwm);
 return 0;
}
