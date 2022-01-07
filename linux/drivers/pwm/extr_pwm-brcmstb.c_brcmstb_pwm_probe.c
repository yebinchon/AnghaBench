
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {int base; int npwm; int * ops; int * dev; } ;
struct brcmstb_pwm {int clk; TYPE_1__ chip; int base; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int brcmstb_pwm_ops ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,int *) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct brcmstb_pwm* devm_kzalloc (int *,int,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct brcmstb_pwm*) ;
 int pwmchip_add (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int brcmstb_pwm_probe(struct platform_device *pdev)
{
 struct brcmstb_pwm *p;
 struct resource *res;
 int ret;

 p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 spin_lock_init(&p->lock);

 p->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(p->clk)) {
  dev_err(&pdev->dev, "failed to obtain clock\n");
  return PTR_ERR(p->clk);
 }

 ret = clk_prepare_enable(p->clk);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to enable clock: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, p);

 p->chip.dev = &pdev->dev;
 p->chip.ops = &brcmstb_pwm_ops;
 p->chip.base = -1;
 p->chip.npwm = 2;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 p->base = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(p->base)) {
  ret = PTR_ERR(p->base);
  goto out_clk;
 }

 ret = pwmchip_add(&p->chip);
 if (ret) {
  dev_err(&pdev->dev, "failed to add PWM chip: %d\n", ret);
  goto out_clk;
 }

 return 0;

out_clk:
 clk_disable_unprepare(p->clk);
 return ret;
}
