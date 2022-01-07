
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct regulator_config {int regmap; int of_node; struct da9063_regulator* driver_data; int init_data; TYPE_2__* dev; } ;
struct TYPE_10__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_regulator_match {int of_node; } ;
struct da9063_regulators_pdata {scalar_t__ n_regulators; } ;
struct da9063_regulators {int n_regulators; struct da9063_regulator* regulator; } ;
struct TYPE_11__ {int name; int owner; int type; } ;
struct da9063_regulator {struct da9063_regulators_pdata* rdev; TYPE_4__ desc; struct da9063_regulators_pdata* suspend_sleep; TYPE_1__* info; struct da9063_regulators_pdata* sleep; struct da9063_regulators_pdata* suspend; struct da9063_regulators_pdata* mode; struct da9063* hw; } ;
struct da9063_dev_model {scalar_t__ type; int n_regulators; TYPE_1__* regulator_info; } ;
struct da9063 {scalar_t__ type; int regmap; } ;
typedef int config ;
struct TYPE_12__ {scalar_t__ reg; } ;
struct TYPE_9__ {TYPE_6__ suspend_sleep; TYPE_6__ sleep; TYPE_6__ suspend; TYPE_6__ mode; TYPE_4__ desc; } ;


 int DA9063_BCORE_MERGE ;
 int DA9063_BUCK_MERGE ;






 int DA9063_REG_CONFIG_H ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_LOW ;
 scalar_t__ IS_ERR (struct da9063_regulators_pdata*) ;
 int PTR_ERR (struct da9063_regulators_pdata*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int da9063_get_regulator_initdata (struct da9063_regulators_pdata*,int) ;
 int da9063_ldo_lim_event ;
 struct da9063_regulators_pdata* da9063_parse_regulators_dt (struct platform_device*,struct of_regulator_match**) ;
 int dev_err (TYPE_2__*,char*,...) ;
 struct da9063* dev_get_drvdata (int ) ;
 struct da9063_regulators* devm_kzalloc (TYPE_2__*,int ,int ) ;
 void* devm_regmap_field_alloc (TYPE_2__*,int ,TYPE_6__) ;
 struct da9063_regulators_pdata* devm_regulator_register (TYPE_2__*,TYPE_4__*,struct regulator_config*) ;
 int devm_request_threaded_irq (TYPE_2__*,int,int *,int ,int,char*,struct da9063_regulators*) ;
 int memset (struct regulator_config*,int ,int) ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 int platform_set_drvdata (struct platform_device*,struct da9063_regulators*) ;
 int regmap_read (int ,int ,int*) ;
 int regulator ;
 struct da9063_dev_model* regulators_models ;
 int struct_size (struct da9063_regulators*,int ,int) ;

__attribute__((used)) static int da9063_regulator_probe(struct platform_device *pdev)
{
 struct da9063 *da9063 = dev_get_drvdata(pdev->dev.parent);
 struct of_regulator_match *da9063_reg_matches = ((void*)0);
 struct da9063_regulators_pdata *regl_pdata;
 const struct da9063_dev_model *model;
 struct da9063_regulators *regulators;
 struct da9063_regulator *regl;
 struct regulator_config config;
 bool bcores_merged, bmem_bio_merged;
 int id, irq, n, n_regulators, ret, val;

 regl_pdata = da9063_parse_regulators_dt(pdev, &da9063_reg_matches);

 if (IS_ERR(regl_pdata) || regl_pdata->n_regulators == 0) {
  dev_err(&pdev->dev,
   "No regulators defined for the platform\n");
  return -ENODEV;
 }


 for (model = regulators_models; model->regulator_info; model++) {
  if (model->type == da9063->type)
   break;
 }
 if (!model->regulator_info) {
  dev_err(&pdev->dev, "Chip model not recognised (%u)\n",
   da9063->type);
  return -ENODEV;
 }

 ret = regmap_read(da9063->regmap, DA9063_REG_CONFIG_H, &val);
 if (ret < 0) {
  dev_err(&pdev->dev,
   "Error while reading BUCKs configuration\n");
  return ret;
 }
 bcores_merged = val & DA9063_BCORE_MERGE;
 bmem_bio_merged = val & DA9063_BUCK_MERGE;

 n_regulators = model->n_regulators;
 if (bcores_merged)
  n_regulators -= 2;
 else
  n_regulators--;
 if (bmem_bio_merged)
  n_regulators -= 2;
 else
  n_regulators--;


 regulators = devm_kzalloc(&pdev->dev, struct_size(regulators,
      regulator, n_regulators), GFP_KERNEL);
 if (!regulators)
  return -ENOMEM;

 regulators->n_regulators = n_regulators;
 platform_set_drvdata(pdev, regulators);


 n = 0;
 id = 0;
 while (n < regulators->n_regulators) {

  switch (id) {
  case 133:
  case 132:
   if (bcores_merged) {
    id++;
    continue;
   }
   break;
  case 129:
  case 130:
   if (bmem_bio_merged) {
    id++;
    continue;
   }
   break;
  case 131:
   if (!bcores_merged) {
    id++;
    continue;
   }
   break;
  case 128:
   if (!bmem_bio_merged) {
    id++;
    continue;
   }
   break;
  }


  regl = &regulators->regulator[n];
  regl->hw = da9063;
  regl->info = &model->regulator_info[id];
  regl->desc = regl->info->desc;
  regl->desc.type = REGULATOR_VOLTAGE;
  regl->desc.owner = THIS_MODULE;

  if (regl->info->mode.reg) {
   regl->mode = devm_regmap_field_alloc(&pdev->dev,
     da9063->regmap, regl->info->mode);
   if (IS_ERR(regl->mode))
    return PTR_ERR(regl->mode);
  }

  if (regl->info->suspend.reg) {
   regl->suspend = devm_regmap_field_alloc(&pdev->dev,
     da9063->regmap, regl->info->suspend);
   if (IS_ERR(regl->suspend))
    return PTR_ERR(regl->suspend);
  }

  if (regl->info->sleep.reg) {
   regl->sleep = devm_regmap_field_alloc(&pdev->dev,
     da9063->regmap, regl->info->sleep);
   if (IS_ERR(regl->sleep))
    return PTR_ERR(regl->sleep);
  }

  if (regl->info->suspend_sleep.reg) {
   regl->suspend_sleep = devm_regmap_field_alloc(&pdev->dev,
     da9063->regmap, regl->info->suspend_sleep);
   if (IS_ERR(regl->suspend_sleep))
    return PTR_ERR(regl->suspend_sleep);
  }


  memset(&config, 0, sizeof(config));
  config.dev = &pdev->dev;
  config.init_data = da9063_get_regulator_initdata(regl_pdata, id);
  config.driver_data = regl;
  if (da9063_reg_matches)
   config.of_node = da9063_reg_matches[id].of_node;
  config.regmap = da9063->regmap;
  regl->rdev = devm_regulator_register(&pdev->dev, &regl->desc,
           &config);
  if (IS_ERR(regl->rdev)) {
   dev_err(&pdev->dev,
    "Failed to register %s regulator\n",
    regl->desc.name);
   return PTR_ERR(regl->rdev);
  }
  id++;
  n++;
 }


 irq = platform_get_irq_byname(pdev, "LDO_LIM");
 if (irq < 0)
  return irq;

 ret = devm_request_threaded_irq(&pdev->dev, irq,
    ((void*)0), da9063_ldo_lim_event,
    IRQF_TRIGGER_LOW | IRQF_ONESHOT,
    "LDO_LIM", regulators);
 if (ret) {
  dev_err(&pdev->dev, "Failed to request LDO_LIM IRQ.\n");
  return ret;
 }

 return 0;
}
