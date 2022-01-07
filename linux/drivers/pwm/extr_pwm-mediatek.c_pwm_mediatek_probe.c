
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {int base; unsigned int npwm; int * ops; int * dev; } ;
struct pwm_mediatek_chip {TYPE_1__ chip; TYPE_2__* soc; void** clk_pwms; void* clk_main; void* clk_top; void* regs; } ;
struct platform_device {int dev; } ;
typedef int name ;
struct TYPE_4__ {unsigned int num_pwms; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*,...) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,struct resource*) ;
 void** devm_kcalloc (int *,unsigned int,int,int ) ;
 struct pwm_mediatek_chip* devm_kzalloc (int *,int,int ) ;
 TYPE_2__* of_device_get_match_data (int *) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pwm_mediatek_chip*) ;
 int pwm_mediatek_ops ;
 int pwmchip_add (TYPE_1__*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static int pwm_mediatek_probe(struct platform_device *pdev)
{
 struct pwm_mediatek_chip *pc;
 struct resource *res;
 unsigned int i;
 int ret;

 pc = devm_kzalloc(&pdev->dev, sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 pc->soc = of_device_get_match_data(&pdev->dev);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 pc->regs = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(pc->regs))
  return PTR_ERR(pc->regs);

 pc->clk_pwms = devm_kcalloc(&pdev->dev, pc->soc->num_pwms,
        sizeof(*pc->clk_pwms), GFP_KERNEL);
 if (!pc->clk_pwms)
  return -ENOMEM;

 pc->clk_top = devm_clk_get(&pdev->dev, "top");
 if (IS_ERR(pc->clk_top)) {
  dev_err(&pdev->dev, "clock: top fail: %ld\n",
   PTR_ERR(pc->clk_top));
  return PTR_ERR(pc->clk_top);
 }

 pc->clk_main = devm_clk_get(&pdev->dev, "main");
 if (IS_ERR(pc->clk_main)) {
  dev_err(&pdev->dev, "clock: main fail: %ld\n",
   PTR_ERR(pc->clk_main));
  return PTR_ERR(pc->clk_main);
 }

 for (i = 0; i < pc->soc->num_pwms; i++) {
  char name[8];

  snprintf(name, sizeof(name), "pwm%d", i + 1);

  pc->clk_pwms[i] = devm_clk_get(&pdev->dev, name);
  if (IS_ERR(pc->clk_pwms[i])) {
   dev_err(&pdev->dev, "clock: %s fail: %ld\n",
    name, PTR_ERR(pc->clk_pwms[i]));
   return PTR_ERR(pc->clk_pwms[i]);
  }
 }

 platform_set_drvdata(pdev, pc);

 pc->chip.dev = &pdev->dev;
 pc->chip.ops = &pwm_mediatek_ops;
 pc->chip.base = -1;
 pc->chip.npwm = pc->soc->num_pwms;

 ret = pwmchip_add(&pc->chip);
 if (ret < 0) {
  dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
  return ret;
 }

 return 0;
}
