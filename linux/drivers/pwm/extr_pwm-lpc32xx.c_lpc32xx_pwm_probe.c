
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_4__ {int npwm; int base; TYPE_1__* pwms; int * ops; int * dev; } ;
struct lpc32xx_pwm_chip {TYPE_2__ chip; scalar_t__ base; scalar_t__ clk; } ;
struct TYPE_3__ {int hwpwm; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 int PWM_PIN_LEVEL ;
 int dev_err (int *,char*,int) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 struct lpc32xx_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int lpc32xx_pwm_ops ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct lpc32xx_pwm_chip*) ;
 int pwmchip_add (TYPE_2__*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int lpc32xx_pwm_probe(struct platform_device *pdev)
{
 struct lpc32xx_pwm_chip *lpc32xx;
 struct resource *res;
 int ret;
 u32 val;

 lpc32xx = devm_kzalloc(&pdev->dev, sizeof(*lpc32xx), GFP_KERNEL);
 if (!lpc32xx)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 lpc32xx->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(lpc32xx->base))
  return PTR_ERR(lpc32xx->base);

 lpc32xx->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(lpc32xx->clk))
  return PTR_ERR(lpc32xx->clk);

 lpc32xx->chip.dev = &pdev->dev;
 lpc32xx->chip.ops = &lpc32xx_pwm_ops;
 lpc32xx->chip.npwm = 1;
 lpc32xx->chip.base = -1;

 ret = pwmchip_add(&lpc32xx->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add PWM chip, error %d\n", ret);
  return ret;
 }


 val = readl(lpc32xx->base + (lpc32xx->chip.pwms[0].hwpwm << 2));
 val &= ~PWM_PIN_LEVEL;
 writel(val, lpc32xx->base + (lpc32xx->chip.pwms[0].hwpwm << 2));

 platform_set_drvdata(pdev, lpc32xx);

 return 0;
}
