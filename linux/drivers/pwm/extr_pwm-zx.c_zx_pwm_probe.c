
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * ops; int * dev; } ;
struct zx_pwm_chip {TYPE_1__ chip; void* pclk; void* wclk; void* base; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int ZX_PWM_EN ;
 int ZX_PWM_MODE ;
 int clk_prepare_enable (void*) ;
 int dev_err (int *,char*,int) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 struct zx_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct zx_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int zx_pwm_ops ;
 int zx_pwm_set_mask (struct zx_pwm_chip*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int zx_pwm_probe(struct platform_device *pdev)
{
 struct zx_pwm_chip *zpc;
 struct resource *res;
 unsigned int i;
 int ret;

 zpc = devm_kzalloc(&pdev->dev, sizeof(*zpc), GFP_KERNEL);
 if (!zpc)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 zpc->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(zpc->base))
  return PTR_ERR(zpc->base);

 zpc->pclk = devm_clk_get(&pdev->dev, "pclk");
 if (IS_ERR(zpc->pclk))
  return PTR_ERR(zpc->pclk);

 zpc->wclk = devm_clk_get(&pdev->dev, "wclk");
 if (IS_ERR(zpc->wclk))
  return PTR_ERR(zpc->wclk);

 ret = clk_prepare_enable(zpc->pclk);
 if (ret)
  return ret;

 zpc->chip.dev = &pdev->dev;
 zpc->chip.ops = &zx_pwm_ops;
 zpc->chip.base = -1;
 zpc->chip.npwm = 4;
 zpc->chip.of_xlate = of_pwm_xlate_with_flags;
 zpc->chip.of_pwm_n_cells = 3;





 for (i = 0; i < zpc->chip.npwm; i++)
  zx_pwm_set_mask(zpc, i, ZX_PWM_MODE, ZX_PWM_EN, 0);

 ret = pwmchip_add(&zpc->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, zpc);

 return 0;
}
