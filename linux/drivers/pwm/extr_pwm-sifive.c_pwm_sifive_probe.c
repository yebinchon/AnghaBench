
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int dummy; } ;
struct TYPE_3__ {int notifier_call; } ;
struct pwm_chip {int of_pwm_n_cells; int base; int npwm; int of_xlate; int * ops; struct device* dev; } ;
struct pwm_sifive_ddata {int clk; TYPE_1__ notifier; int regs; struct pwm_chip chip; int lock; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_notifier_register (int ,TYPE_1__*) ;
 int clk_notifier_unregister (int ,TYPE_1__*) ;
 int clk_prepare_enable (int ) ;
 int dev_dbg (struct device*,char*,int) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,int *) ;
 int devm_ioremap_resource (struct device*,struct resource*) ;
 struct pwm_sifive_ddata* devm_kzalloc (struct device*,int,int ) ;
 int mutex_init (int *) ;
 int of_pwm_xlate_with_flags ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct pwm_sifive_ddata*) ;
 int pwm_sifive_clock_notifier ;
 int pwm_sifive_ops ;
 int pwmchip_add (struct pwm_chip*) ;

__attribute__((used)) static int pwm_sifive_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct pwm_sifive_ddata *ddata;
 struct pwm_chip *chip;
 struct resource *res;
 int ret;

 ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
 if (!ddata)
  return -ENOMEM;

 mutex_init(&ddata->lock);
 chip = &ddata->chip;
 chip->dev = dev;
 chip->ops = &pwm_sifive_ops;
 chip->of_xlate = of_pwm_xlate_with_flags;
 chip->of_pwm_n_cells = 3;
 chip->base = -1;
 chip->npwm = 4;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 ddata->regs = devm_ioremap_resource(dev, res);
 if (IS_ERR(ddata->regs))
  return PTR_ERR(ddata->regs);

 ddata->clk = devm_clk_get(dev, ((void*)0));
 if (IS_ERR(ddata->clk)) {
  if (PTR_ERR(ddata->clk) != -EPROBE_DEFER)
   dev_err(dev, "Unable to find controller clock\n");
  return PTR_ERR(ddata->clk);
 }

 ret = clk_prepare_enable(ddata->clk);
 if (ret) {
  dev_err(dev, "failed to enable clock for pwm: %d\n", ret);
  return ret;
 }


 ddata->notifier.notifier_call = pwm_sifive_clock_notifier;
 ret = clk_notifier_register(ddata->clk, &ddata->notifier);
 if (ret) {
  dev_err(dev, "failed to register clock notifier: %d\n", ret);
  goto disable_clk;
 }

 ret = pwmchip_add(chip);
 if (ret < 0) {
  dev_err(dev, "cannot register PWM: %d\n", ret);
  goto unregister_clk;
 }

 platform_set_drvdata(pdev, ddata);
 dev_dbg(dev, "SiFive PWM chip registered %d PWMs\n", chip->npwm);

 return 0;

unregister_clk:
 clk_notifier_unregister(ddata->clk, &ddata->notifier);
disable_clk:
 clk_disable_unprepare(ddata->clk);

 return ret;
}
