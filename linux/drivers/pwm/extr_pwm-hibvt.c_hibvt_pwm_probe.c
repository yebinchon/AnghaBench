
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct hibvt_pwm_soc {int num_pwms; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * dev; int * ops; } ;
struct hibvt_pwm_chip {int base; TYPE_1__ chip; int clk; int rstc; struct hibvt_pwm_soc const* soc; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int PWM_CTRL_ADDR (int) ;
 int PWM_KEEP_MASK ;
 int PWM_KEEP_SHIFT ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct hibvt_pwm_chip* devm_kzalloc (int *,int,int ) ;
 int devm_reset_control_get_exclusive (int *,int *) ;
 int hibvt_pwm_ops ;
 int hibvt_pwm_set_bits (int ,int ,int ,int) ;
 int msleep (int) ;
 struct hibvt_pwm_soc* of_device_get_match_data (int *) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct hibvt_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int reset_control_assert (int ) ;
 int reset_control_deassert (int ) ;

__attribute__((used)) static int hibvt_pwm_probe(struct platform_device *pdev)
{
 const struct hibvt_pwm_soc *soc =
    of_device_get_match_data(&pdev->dev);
 struct hibvt_pwm_chip *pwm_chip;
 struct resource *res;
 int ret;
 int i;

 pwm_chip = devm_kzalloc(&pdev->dev, sizeof(*pwm_chip), GFP_KERNEL);
 if (pwm_chip == ((void*)0))
  return -ENOMEM;

 pwm_chip->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm_chip->clk)) {
  dev_err(&pdev->dev, "getting clock failed with %ld\n",
    PTR_ERR(pwm_chip->clk));
  return PTR_ERR(pwm_chip->clk);
 }

 pwm_chip->chip.ops = &hibvt_pwm_ops;
 pwm_chip->chip.dev = &pdev->dev;
 pwm_chip->chip.base = -1;
 pwm_chip->chip.npwm = soc->num_pwms;
 pwm_chip->chip.of_xlate = of_pwm_xlate_with_flags;
 pwm_chip->chip.of_pwm_n_cells = 3;
 pwm_chip->soc = soc;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pwm_chip->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pwm_chip->base))
  return PTR_ERR(pwm_chip->base);

 ret = clk_prepare_enable(pwm_chip->clk);
 if (ret < 0)
  return ret;

 pwm_chip->rstc = devm_reset_control_get_exclusive(&pdev->dev, ((void*)0));
 if (IS_ERR(pwm_chip->rstc)) {
  clk_disable_unprepare(pwm_chip->clk);
  return PTR_ERR(pwm_chip->rstc);
 }

 reset_control_assert(pwm_chip->rstc);
 msleep(30);
 reset_control_deassert(pwm_chip->rstc);

 ret = pwmchip_add(&pwm_chip->chip);
 if (ret < 0) {
  clk_disable_unprepare(pwm_chip->clk);
  return ret;
 }

 for (i = 0; i < pwm_chip->chip.npwm; i++) {
  hibvt_pwm_set_bits(pwm_chip->base, PWM_CTRL_ADDR(i),
    PWM_KEEP_MASK, (0x1 << PWM_KEEP_SHIFT));
 }

 platform_set_drvdata(pdev, pwm_chip);

 return 0;
}
