
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; TYPE_2__* dev; } ;
struct vt8500_chip {int clk; TYPE_1__ chip; int base; } ;
struct resource {int dummy; } ;
struct TYPE_7__ {struct device_node* of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int VT8500_NR_PWMS ;
 int clk_prepare (int ) ;
 int clk_unprepare (int ) ;
 int dev_err (TYPE_2__*,char*) ;
 int devm_clk_get (TYPE_2__*,int *) ;
 int devm_ioremap_resource (TYPE_2__*,struct resource*) ;
 struct vt8500_chip* devm_kzalloc (TYPE_2__*,int,int ) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct vt8500_chip*) ;
 int pwmchip_add (TYPE_1__*) ;
 int vt8500_pwm_ops ;

__attribute__((used)) static int vt8500_pwm_probe(struct platform_device *pdev)
{
 struct vt8500_chip *chip;
 struct resource *r;
 struct device_node *np = pdev->dev.of_node;
 int ret;

 if (!np) {
  dev_err(&pdev->dev, "invalid devicetree node\n");
  return -EINVAL;
 }

 chip = devm_kzalloc(&pdev->dev, sizeof(*chip), GFP_KERNEL);
 if (chip == ((void*)0))
  return -ENOMEM;

 chip->chip.dev = &pdev->dev;
 chip->chip.ops = &vt8500_pwm_ops;
 chip->chip.of_xlate = of_pwm_xlate_with_flags;
 chip->chip.of_pwm_n_cells = 3;
 chip->chip.base = -1;
 chip->chip.npwm = VT8500_NR_PWMS;

 chip->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(chip->clk)) {
  dev_err(&pdev->dev, "clock source not specified\n");
  return PTR_ERR(chip->clk);
 }

 r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 chip->base = devm_ioremap_resource(&pdev->dev, r);
 if (IS_ERR(chip->base))
  return PTR_ERR(chip->base);

 ret = clk_prepare(chip->clk);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to prepare clock\n");
  return ret;
 }

 ret = pwmchip_add(&chip->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to add PWM chip\n");
  clk_unprepare(chip->clk);
  return ret;
 }

 platform_set_drvdata(pdev, chip);
 return ret;
}
