
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int npwm; int of_pwm_n_cells; int of_xlate; int * ops; int * dev; } ;
struct kona_pwmc {TYPE_1__ chip; scalar_t__ clk; scalar_t__ base; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ PWM_CONTROL_OFFSET ;
 int PWM_CONTROL_TYPE_SHIFT (unsigned int) ;
 int PWM_POLARITY_INVERSED ;
 int clk_disable_unprepare (scalar_t__) ;
 int clk_prepare_enable (scalar_t__) ;
 int dev_err (int *,char*,int) ;
 scalar_t__ devm_clk_get (int *,int *) ;
 scalar_t__ devm_ioremap_resource (int *,struct resource*) ;
 struct kona_pwmc* devm_kzalloc (int *,int,int ) ;
 int kona_pwm_ops ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct kona_pwmc*) ;
 int pwmchip_add_with_polarity (TYPE_1__*,int ) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int kona_pwmc_probe(struct platform_device *pdev)
{
 struct kona_pwmc *kp;
 struct resource *res;
 unsigned int chan;
 unsigned int value = 0;
 int ret = 0;

 kp = devm_kzalloc(&pdev->dev, sizeof(*kp), GFP_KERNEL);
 if (kp == ((void*)0))
  return -ENOMEM;

 platform_set_drvdata(pdev, kp);

 kp->chip.dev = &pdev->dev;
 kp->chip.ops = &kona_pwm_ops;
 kp->chip.base = -1;
 kp->chip.npwm = 6;
 kp->chip.of_xlate = of_pwm_xlate_with_flags;
 kp->chip.of_pwm_n_cells = 3;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 kp->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(kp->base))
  return PTR_ERR(kp->base);

 kp->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(kp->clk)) {
  dev_err(&pdev->dev, "failed to get clock: %ld\n",
   PTR_ERR(kp->clk));
  return PTR_ERR(kp->clk);
 }

 ret = clk_prepare_enable(kp->clk);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to enable clock: %d\n", ret);
  return ret;
 }


 for (chan = 0; chan < kp->chip.npwm; chan++)
  value |= (1 << PWM_CONTROL_TYPE_SHIFT(chan));

 writel(value, kp->base + PWM_CONTROL_OFFSET);

 clk_disable_unprepare(kp->clk);

 ret = pwmchip_add_with_polarity(&kp->chip, PWM_POLARITY_INVERSED);
 if (ret < 0)
  dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);

 return ret;
}
