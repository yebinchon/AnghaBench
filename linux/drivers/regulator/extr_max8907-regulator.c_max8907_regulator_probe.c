
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* name; } ;
struct regulator_init_data {char const* supply_regulator; TYPE_1__ constraints; } ;
struct regulator_dev {int dummy; } ;
struct regulator_config {int regmap; int of_node; struct max8907_regulator* driver_data; struct regulator_init_data* init_data; int dev; } ;
struct TYPE_9__ {int parent; } ;
struct platform_device {TYPE_3__ dev; } ;
struct max8907_regulator {TYPE_2__* desc; } ;
struct max8907_platform_data {struct regulator_init_data** init_data; } ;
struct max8907 {int regmap_gen; int dev; } ;
struct TYPE_8__ {int min_uV; int uV_step; int n_voltages; int id; char* name; int * ops; int enable_reg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;

 unsigned int MAX8907_II2RR_VERSION_MASK ;
 unsigned int MAX8907_II2RR_VERSION_REV_B ;
 unsigned int MAX8907_MASK_LDO_SEQ ;
 unsigned int MAX8907_MASK_OUT5V_ENSRC ;
 unsigned int MAX8907_MASK_OUT5V_VINEN ;

 int MAX8907_NUM_REGULATORS ;
 int MAX8907_REG_II2RR ;
 size_t MAX8907_SD1 ;


 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (TYPE_3__*,char*,char*) ;
 struct max8907* dev_get_drvdata (int ) ;
 struct max8907_platform_data* dev_get_platdata (int ) ;
 struct max8907_regulator* devm_kzalloc (TYPE_3__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_3__*,TYPE_2__*,struct regulator_config*) ;
 struct regulator_init_data* match_init_data (int) ;
 int match_of_node (int) ;
 int max8907_ldo_hwctl_ops ;
 int max8907_ldo_ops ;
 int max8907_out5v_hwctl_ops ;
 int max8907_out5v_ops ;
 int max8907_regulator_parse_dt (struct platform_device*) ;
 int max8907_regulators ;
 int memcpy (TYPE_2__*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct max8907_regulator*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max8907_regulator_probe(struct platform_device *pdev)
{
 struct max8907 *max8907 = dev_get_drvdata(pdev->dev.parent);
 struct max8907_platform_data *pdata = dev_get_platdata(max8907->dev);
 int ret;
 struct max8907_regulator *pmic;
 unsigned int val;
 int i;
 struct regulator_config config = {};
 struct regulator_init_data *idata;
 const char *mbatt_rail_name = ((void*)0);

 ret = max8907_regulator_parse_dt(pdev);
 if (ret)
  return ret;

 pmic = devm_kzalloc(&pdev->dev, sizeof(*pmic), GFP_KERNEL);
 if (!pmic)
  return -ENOMEM;

 platform_set_drvdata(pdev, pmic);

 memcpy(pmic->desc, max8907_regulators, sizeof(pmic->desc));


 regmap_read(max8907->regmap_gen, MAX8907_REG_II2RR, &val);
 if ((val & MAX8907_II2RR_VERSION_MASK) ==
     MAX8907_II2RR_VERSION_REV_B) {
  pmic->desc[MAX8907_SD1].min_uV = 637500;
  pmic->desc[MAX8907_SD1].uV_step = 12500;
  pmic->desc[MAX8907_SD1].n_voltages =
      (1425000 - 637500) / 12500 + 1;
 }

 for (i = 0; i < MAX8907_NUM_REGULATORS; i++) {
  struct regulator_dev *rdev;

  config.dev = pdev->dev.parent;
  if (pdata)
   idata = pdata->init_data[i];
  else
   idata = match_init_data(i);
  config.init_data = idata;
  config.driver_data = pmic;
  config.regmap = max8907->regmap_gen;
  config.of_node = match_of_node(i);

  switch (pmic->desc[i].id) {
  case 130:
   if (idata && idata->constraints.name)
    mbatt_rail_name = idata->constraints.name;
   else
    mbatt_rail_name = pmic->desc[i].name;
   break;
  case 131:
  case 129:
  case 128:
   idata->supply_regulator = mbatt_rail_name;
   break;
  }

  if (pmic->desc[i].ops == &max8907_ldo_ops) {
   regmap_read(config.regmap, pmic->desc[i].enable_reg,
        &val);
   if ((val & MAX8907_MASK_LDO_SEQ) !=
       MAX8907_MASK_LDO_SEQ)
    pmic->desc[i].ops = &max8907_ldo_hwctl_ops;
  } else if (pmic->desc[i].ops == &max8907_out5v_ops) {
   regmap_read(config.regmap, pmic->desc[i].enable_reg,
        &val);
   if ((val & (MAX8907_MASK_OUT5V_VINEN |
      MAX8907_MASK_OUT5V_ENSRC)) !=
       MAX8907_MASK_OUT5V_ENSRC)
    pmic->desc[i].ops = &max8907_out5v_hwctl_ops;
  }

  rdev = devm_regulator_register(&pdev->dev,
      &pmic->desc[i], &config);
  if (IS_ERR(rdev)) {
   dev_err(&pdev->dev,
    "failed to register %s regulator\n",
    pmic->desc[i].name);
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
