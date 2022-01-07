
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_9__ {struct TYPE_9__* parent; struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_8__ {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; TYPE_2__* dev; } ;
struct ecap_pwm_chip {TYPE_1__ chip; struct clk* mmio_base; int clk_rate; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct clk*) ;
 int PTR_ERR (struct clk*) ;
 int clk_get_rate (struct clk*) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_warn (TYPE_2__*,char*) ;
 struct clk* devm_clk_get (TYPE_2__*,char*) ;
 struct clk* devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct ecap_pwm_chip* devm_kzalloc (TYPE_2__*,int,int ) ;
 int ecap_pwm_ops ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct ecap_pwm_chip*) ;
 int pm_runtime_enable (TYPE_2__*) ;
 int pwmchip_add (TYPE_1__*) ;

__attribute__((used)) static int ecap_pwm_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct ecap_pwm_chip *pc;
 struct resource *r;
 struct clk *clk;
 int ret;

 pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 clk = devm_clk_get(&pdev->dev, "fck");
 if (IS_ERR(clk)) {
  if (of_device_is_compatible(np, "ti,am33xx-ecap")) {
   dev_warn(&pdev->dev, "Binding is obsolete.\n");
   clk = devm_clk_get(pdev->dev.parent, "fck");
  }
 }

 if (IS_ERR(clk)) {
  dev_err(&pdev->dev, "failed to get clock\n");
  return PTR_ERR(clk);
 }

 pc->clk_rate = clk_get_rate(clk);
 if (!pc->clk_rate) {
  dev_err(&pdev->dev, "failed to get clock rate\n");
  return -EINVAL;
 }

 pc->chip.dev = &pdev->dev;
 pc->chip.ops = &ecap_pwm_ops;
 pc->chip.of_xlate = of_pwm_xlate_with_flags;
 pc->chip.of_pwm_n_cells = 3;
 pc->chip.base = -1;
 pc->chip.npwm = 1;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pc->mmio_base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(pc->mmio_base))
  return PTR_ERR(pc->mmio_base);

 ret = pwmchip_add(&pc->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
  return ret;
 }

 platform_set_drvdata(pdev, pc);
 pm_runtime_enable(&pdev->dev);

 return 0;
}
