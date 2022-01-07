
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct stpmic1_regulator_cfg {scalar_t__ mask_reset_reg; int mask_reset_mask; TYPE_3__ desc; } ;
struct stpmic1 {int regmap; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int of_node; void* driver_data; int regmap; int init_data; TYPE_1__* dev; } ;
struct TYPE_5__ {int parent; } ;
struct platform_device {TYPE_1__ dev; int name; } ;
struct of_regulator_match {int of_node; int init_data; } ;


 int IRQF_ONESHOT ;
 int IRQF_SHARED ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct stpmic1* dev_get_drvdata (int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,TYPE_3__*,struct regulator_config*) ;
 int devm_request_threaded_irq (TYPE_1__*,int,int *,int ,int,int ,struct regulator_dev*) ;
 scalar_t__ of_get_property (int ,char*,int *) ;
 int of_irq_get (int ,int ) ;
 int regmap_update_bits (int ,scalar_t__,int ,int ) ;
 int stpmic1_curlim_irq_handler ;

__attribute__((used)) static int stpmic1_regulator_register(struct platform_device *pdev, int id,
          struct of_regulator_match *match,
          const struct stpmic1_regulator_cfg *cfg)
{
 struct stpmic1 *pmic_dev = dev_get_drvdata(pdev->dev.parent);
 struct regulator_dev *rdev;
 struct regulator_config config = {};
 int ret = 0;
 int irq;

 config.dev = &pdev->dev;
 config.init_data = match->init_data;
 config.of_node = match->of_node;
 config.regmap = pmic_dev->regmap;
 config.driver_data = (void *)cfg;

 rdev = devm_regulator_register(&pdev->dev, &cfg->desc, &config);
 if (IS_ERR(rdev)) {
  dev_err(&pdev->dev, "failed to register %s regulator\n",
   cfg->desc.name);
  return PTR_ERR(rdev);
 }


 if (of_get_property(config.of_node, "st,mask-reset", ((void*)0)) &&
     cfg->mask_reset_reg != 0) {
  ret = regmap_update_bits(pmic_dev->regmap,
      cfg->mask_reset_reg,
      cfg->mask_reset_mask,
      cfg->mask_reset_mask);
  if (ret) {
   dev_err(&pdev->dev, "set mask reset failed\n");
   return ret;
  }
 }


 irq = of_irq_get(config.of_node, 0);
 if (irq > 0) {
  ret = devm_request_threaded_irq(&pdev->dev,
      irq, ((void*)0),
      stpmic1_curlim_irq_handler,
      IRQF_ONESHOT | IRQF_SHARED,
      pdev->name, rdev);
  if (ret) {
   dev_err(&pdev->dev, "Request IRQ failed\n");
   return ret;
  }
 }
 return 0;
}
