
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sti_pwm_compat_data {int max_prescale; int max_pwm_cnt; unsigned int cpt_num_devs; scalar_t__ pwm_num_devs; int reg_fields; } ;
struct TYPE_2__ {int base; int * pwms; scalar_t__ npwm; int * ops; struct device* dev; } ;
struct sti_pwm_chip {TYPE_1__ chip; void* cpt_clk; void* pwm_clk; struct sti_pwm_compat_data* cdata; int sti_pwm_lock; scalar_t__ en_count; struct device* dev; void* regmap; void* mmio; } ;
struct sti_cpt_ddata {int lock; int wait; } ;
struct resource {int dummy; } ;
struct device {int of_node; } ;
struct platform_device {struct device dev; int name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int clk_prepare (void*) ;
 int clk_unprepare (void*) ;
 int dev_err (struct device*,char*) ;
 void* devm_ioremap_resource (struct device*,struct resource*) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 void* devm_regmap_init_mmio (struct device*,void*,int *) ;
 int devm_request_irq (struct device*,int,int ,int ,int ,struct sti_pwm_chip*) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;
 void* of_clk_get_by_name (int ,char*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sti_pwm_chip*) ;
 int pwm_set_chip_data (int *,struct sti_cpt_ddata*) ;
 int pwmchip_add (TYPE_1__*) ;
 int sti_pwm_interrupt ;
 int sti_pwm_ops ;
 int sti_pwm_probe_dt (struct sti_pwm_chip*) ;
 int sti_pwm_regfields ;
 int sti_pwm_regmap_config ;

__attribute__((used)) static int sti_pwm_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct sti_pwm_compat_data *cdata;
 struct sti_pwm_chip *pc;
 struct resource *res;
 unsigned int i;
 int irq, ret;

 pc = devm_kzalloc(dev, sizeof(*pc), GFP_KERNEL);
 if (!pc)
  return -ENOMEM;

 cdata = devm_kzalloc(dev, sizeof(*cdata), GFP_KERNEL);
 if (!cdata)
  return -ENOMEM;

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);

 pc->mmio = devm_ioremap_resource(dev, res);
 if (IS_ERR(pc->mmio))
  return PTR_ERR(pc->mmio);

 pc->regmap = devm_regmap_init_mmio(dev, pc->mmio,
        &sti_pwm_regmap_config);
 if (IS_ERR(pc->regmap))
  return PTR_ERR(pc->regmap);

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 ret = devm_request_irq(&pdev->dev, irq, sti_pwm_interrupt, 0,
          pdev->name, pc);
 if (ret < 0) {
  dev_err(&pdev->dev, "Failed to request IRQ\n");
  return ret;
 }





 cdata->reg_fields = sti_pwm_regfields;
 cdata->max_prescale = 0xff;
 cdata->max_pwm_cnt = 255;
 cdata->pwm_num_devs = 0;
 cdata->cpt_num_devs = 0;

 pc->cdata = cdata;
 pc->dev = dev;
 pc->en_count = 0;
 mutex_init(&pc->sti_pwm_lock);

 ret = sti_pwm_probe_dt(pc);
 if (ret)
  return ret;

 if (!cdata->pwm_num_devs)
  goto skip_pwm;

 pc->pwm_clk = of_clk_get_by_name(dev->of_node, "pwm");
 if (IS_ERR(pc->pwm_clk)) {
  dev_err(dev, "failed to get PWM clock\n");
  return PTR_ERR(pc->pwm_clk);
 }

 ret = clk_prepare(pc->pwm_clk);
 if (ret) {
  dev_err(dev, "failed to prepare clock\n");
  return ret;
 }

skip_pwm:
 if (!cdata->cpt_num_devs)
  goto skip_cpt;

 pc->cpt_clk = of_clk_get_by_name(dev->of_node, "capture");
 if (IS_ERR(pc->cpt_clk)) {
  dev_err(dev, "failed to get PWM capture clock\n");
  return PTR_ERR(pc->cpt_clk);
 }

 ret = clk_prepare(pc->cpt_clk);
 if (ret) {
  dev_err(dev, "failed to prepare clock\n");
  return ret;
 }

skip_cpt:
 pc->chip.dev = dev;
 pc->chip.ops = &sti_pwm_ops;
 pc->chip.base = -1;
 pc->chip.npwm = pc->cdata->pwm_num_devs;

 ret = pwmchip_add(&pc->chip);
 if (ret < 0) {
  clk_unprepare(pc->pwm_clk);
  clk_unprepare(pc->cpt_clk);
  return ret;
 }

 for (i = 0; i < cdata->cpt_num_devs; i++) {
  struct sti_cpt_ddata *ddata;

  ddata = devm_kzalloc(dev, sizeof(*ddata), GFP_KERNEL);
  if (!ddata)
   return -ENOMEM;

  init_waitqueue_head(&ddata->wait);
  mutex_init(&ddata->lock);

  pwm_set_chip_data(&pc->chip.pwms[i], ddata);
 }

 platform_set_drvdata(pdev, pc);

 return 0;
}
