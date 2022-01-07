
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_6__ {int base; int npwm; int * ops; TYPE_3__* dev; } ;
struct mxs_pwm_chip {TYPE_1__ chip; int base; int clk; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (TYPE_3__*,char*,int) ;
 int devm_clk_get (TYPE_3__*,int *) ;
 struct mxs_pwm_chip* devm_kzalloc (TYPE_3__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int mxs_pwm_ops ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct mxs_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int pwmchip_remove (TYPE_1__*) ;
 int stmp_reset_block (int ) ;

__attribute__((used)) static int mxs_pwm_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct mxs_pwm_chip *mxs;
 int ret;

 mxs = devm_kzalloc(&pdev->dev, sizeof(*mxs), GFP_KERNEL);
 if (!mxs)
  return -ENOMEM;

 mxs->base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(mxs->base))
  return PTR_ERR(mxs->base);

 mxs->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(mxs->clk))
  return PTR_ERR(mxs->clk);

 mxs->chip.dev = &pdev->dev;
 mxs->chip.ops = &mxs_pwm_ops;
 mxs->chip.base = -1;

 ret = of_property_read_u32(np, "fsl,pwm-number", &mxs->chip.npwm);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to get pwm number: %d\n", ret);
  return ret;
 }

 ret = pwmchip_add(&mxs->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add pwm chip %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, mxs);

 ret = stmp_reset_block(mxs->base);
 if (ret)
  goto pwm_remove;

 return 0;

pwm_remove:
 pwmchip_remove(&mxs->chip);
 return ret;
}
