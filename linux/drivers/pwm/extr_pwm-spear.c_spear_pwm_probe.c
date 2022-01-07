
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int base; int npwm; int * ops; TYPE_2__* dev; } ;
struct spear_pwm_chip {scalar_t__ clk; TYPE_1__ chip; scalar_t__ mmio_base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (scalar_t__) ;
 int NUM_PWM ;
 int PTR_ERR (scalar_t__) ;
 scalar_t__ PWMMCR ;
 int PWMMCR_PWM_ENABLE ;
 int clk_disable (scalar_t__) ;
 int clk_enable (scalar_t__) ;
 int clk_prepare (scalar_t__) ;
 int clk_unprepare (scalar_t__) ;
 int dev_err (TYPE_2__*,char*,int) ;
 scalar_t__ devm_clk_get (TYPE_2__*,int *) ;
 scalar_t__ devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct spear_pwm_chip* devm_kzalloc (TYPE_2__*,int,int ) ;
 scalar_t__ of_device_is_compatible (struct device_node*,char*) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct spear_pwm_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int readl_relaxed (scalar_t__) ;
 int spear_pwm_ops ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int spear_pwm_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 struct spear_pwm_chip *pc;
 struct resource *r;
 int ret;
 u32 val;

 pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pc->mmio_base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(pc->mmio_base))
  return PTR_ERR(pc->mmio_base);

 pc->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(pc->clk))
  return PTR_ERR(pc->clk);

 platform_set_drvdata(pdev, pc);

 pc->chip.dev = &pdev->dev;
 pc->chip.ops = &spear_pwm_ops;
 pc->chip.base = -1;
 pc->chip.npwm = NUM_PWM;

 ret = clk_prepare(pc->clk);
 if (ret)
  return ret;

 if (of_device_is_compatible(np, "st,spear1340-pwm")) {
  ret = clk_enable(pc->clk);
  if (ret) {
   clk_unprepare(pc->clk);
   return ret;
  }




  val = readl_relaxed(pc->mmio_base + PWMMCR);
  val |= PWMMCR_PWM_ENABLE;
  writel_relaxed(val, pc->mmio_base + PWMMCR);

  clk_disable(pc->clk);
 }

 ret = pwmchip_add(&pc->chip);
 if (ret < 0) {
  clk_unprepare(pc->clk);
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
 }

 return ret;
}
