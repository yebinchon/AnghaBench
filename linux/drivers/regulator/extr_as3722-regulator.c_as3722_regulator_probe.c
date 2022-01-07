
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct regulator_ops {int dummy; } ;
struct regulator_dev {int dummy; } ;
struct regulator_desc {int min_uV; int uV_step; int linear_min_sel; int enable_time; struct regulator_ops const* ops; void* csel_mask; void* csel_reg; void* n_current_limits; void* curr_table; void* n_linear_ranges; void* linear_ranges; int n_voltages; void* bypass_val_off; void* bypass_val_on; int bypass_mask; int bypass_reg; int vsel_mask; void* vsel_reg; int enable_mask; int enable_reg; int owner; int type; int id; int supply_name; int name; } ;
struct regulator_config {int of_node; int init_data; int regmap; struct as3722_regulators* driver_data; TYPE_1__* dev; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct as3722_regulators {struct regulator_desc* desc; struct as3722_regulator_config_data* reg_config_data; struct as3722* as3722; TYPE_1__* dev; } ;
struct as3722_regulator_config_data {scalar_t__ ext_control; int reg_init; int enable_tracking; } ;
struct as3722 {int regmap; } ;
struct TYPE_8__ {void* vsel_reg; int vsel_mask; int enable_mask; int enable_reg; int n_voltages; int regulator_id; int sname; int name; } ;
struct TYPE_7__ {int of_node; } ;


 void* ARRAY_SIZE (void*) ;
 int AS3722_LDO3_MODE_PMOS_TRACKING ;
 int AS3722_LDO6_VOLTAGE_REG ;
 void* AS3722_LDO6_VSEL_BYPASS ;
 void* AS3722_LDO_ILIMIT_MASK ;
 int AS3722_LDO_VSEL_MASK ;
 void* AS3722_OVCURRENT_DEB_REG ;
 void* AS3722_OVCURRENT_REG ;
 void* AS3722_OVCURRENT_SD0_TRIP_MASK ;
 void* AS3722_OVCURRENT_SD1_TRIP_MASK ;
 void* AS3722_OVCURRENT_SD6_TRIP_MASK ;



 int AS3722_REGULATOR_ID_MAX ;







 int AS3722_SD0_VSEL_LOW_VOL_MAX ;
 int AS3722_SD0_VSEL_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regulator_dev*) ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int as3722_extreg_init (struct as3722_regulators*,int,scalar_t__) ;
 int as3722_get_regulator_dt_data (struct platform_device*,struct as3722_regulators*) ;
 struct regulator_ops as3722_ldo0_extcntrl_ops ;
 struct regulator_ops as3722_ldo0_ops ;
 struct regulator_ops as3722_ldo3_extcntrl_ops ;
 struct regulator_ops as3722_ldo3_ops ;
 int as3722_ldo3_set_tracking_mode (struct as3722_regulators*,int,int ) ;
 struct regulator_ops as3722_ldo6_extcntrl_ops ;
 struct regulator_ops as3722_ldo6_ops ;
 void* as3722_ldo_current ;
 struct regulator_ops as3722_ldo_extcntrl_ops ;
 struct regulator_ops as3722_ldo_ops ;
 void* as3722_ldo_ranges ;
 TYPE_5__* as3722_reg_lookup ;
 TYPE_4__* as3722_regulator_matches ;
 void* as3722_sd016_current ;
 struct regulator_ops as3722_sd016_extcntrl_ops ;
 struct regulator_ops as3722_sd016_ops ;
 int as3722_sd0_is_low_voltage (struct as3722_regulators*) ;
 struct regulator_ops as3722_sd2345_extcntrl_ops ;
 struct regulator_ops as3722_sd2345_ops ;
 void* as3722_sd2345_ranges ;
 int dev_err (TYPE_1__*,char*,int,...) ;
 struct as3722* dev_get_drvdata (int ) ;
 struct as3722_regulators* devm_kzalloc (TYPE_1__*,int,int ) ;
 struct regulator_dev* devm_regulator_register (TYPE_1__*,struct regulator_desc*,struct regulator_config*) ;
 int platform_set_drvdata (struct platform_device*,struct as3722_regulators*) ;
 int regulator_enable_regmap (struct regulator_dev*) ;

__attribute__((used)) static int as3722_regulator_probe(struct platform_device *pdev)
{
 struct as3722 *as3722 = dev_get_drvdata(pdev->dev.parent);
 struct as3722_regulators *as3722_regs;
 struct as3722_regulator_config_data *reg_config;
 struct regulator_dev *rdev;
 struct regulator_config config = { };
 const struct regulator_ops *ops;
 int id;
 int ret;

 as3722_regs = devm_kzalloc(&pdev->dev, sizeof(*as3722_regs),
    GFP_KERNEL);
 if (!as3722_regs)
  return -ENOMEM;

 as3722_regs->dev = &pdev->dev;
 as3722_regs->as3722 = as3722;
 platform_set_drvdata(pdev, as3722_regs);

 ret = as3722_get_regulator_dt_data(pdev, as3722_regs);
 if (ret < 0)
  return ret;

 config.dev = &pdev->dev;
 config.driver_data = as3722_regs;
 config.regmap = as3722->regmap;

 for (id = 0; id < AS3722_REGULATOR_ID_MAX; id++) {
  struct regulator_desc *desc;

  desc = &as3722_regs->desc[id];
  reg_config = &as3722_regs->reg_config_data[id];

  desc->name = as3722_reg_lookup[id].name;
  desc->supply_name = as3722_reg_lookup[id].sname;
  desc->id = as3722_reg_lookup[id].regulator_id;
  desc->n_voltages = as3722_reg_lookup[id].n_voltages;
  desc->type = REGULATOR_VOLTAGE;
  desc->owner = THIS_MODULE;
  desc->enable_reg = as3722_reg_lookup[id].enable_reg;
  desc->enable_mask = as3722_reg_lookup[id].enable_mask;
  desc->vsel_reg = as3722_reg_lookup[id].vsel_reg;
  desc->vsel_mask = as3722_reg_lookup[id].vsel_mask;
  switch (id) {
  case 137:
   if (reg_config->ext_control)
    ops = &as3722_ldo0_extcntrl_ops;
   else
    ops = &as3722_ldo0_ops;
   desc->min_uV = 825000;
   desc->uV_step = 25000;
   desc->linear_min_sel = 1;
   desc->enable_time = 500;
   desc->curr_table = as3722_ldo_current;
   desc->n_current_limits = ARRAY_SIZE(as3722_ldo_current);
   desc->csel_reg = as3722_reg_lookup[id].vsel_reg;
   desc->csel_mask = AS3722_LDO_ILIMIT_MASK;
   break;
  case 136:
   if (reg_config->ext_control)
    ops = &as3722_ldo3_extcntrl_ops;
   else
    ops = &as3722_ldo3_ops;
   desc->min_uV = 620000;
   desc->uV_step = 20000;
   desc->linear_min_sel = 1;
   desc->enable_time = 500;
   if (reg_config->enable_tracking) {
    ret = as3722_ldo3_set_tracking_mode(as3722_regs,
     id, AS3722_LDO3_MODE_PMOS_TRACKING);
    if (ret < 0) {
     dev_err(&pdev->dev,
      "LDO3 tracking failed: %d\n",
      ret);
     return ret;
    }
   }
   break;
  case 135:
   if (reg_config->ext_control)
    ops = &as3722_ldo6_extcntrl_ops;
   else
    ops = &as3722_ldo6_ops;
   desc->enable_time = 500;
   desc->bypass_reg = AS3722_LDO6_VOLTAGE_REG;
   desc->bypass_mask = AS3722_LDO_VSEL_MASK;
   desc->bypass_val_on = AS3722_LDO6_VSEL_BYPASS;
   desc->bypass_val_off = AS3722_LDO6_VSEL_BYPASS;
   desc->linear_ranges = as3722_ldo_ranges;
   desc->n_linear_ranges = ARRAY_SIZE(as3722_ldo_ranges);
   desc->curr_table = as3722_ldo_current;
   desc->n_current_limits = ARRAY_SIZE(as3722_ldo_current);
   desc->csel_reg = as3722_reg_lookup[id].vsel_reg;
   desc->csel_mask = AS3722_LDO_ILIMIT_MASK;
   break;
  case 134:
  case 133:
  case 128:
   if (reg_config->ext_control)
    ops = &as3722_sd016_extcntrl_ops;
   else
    ops = &as3722_sd016_ops;
   if (id == 134 &&
       as3722_sd0_is_low_voltage(as3722_regs)) {
    as3722_regs->desc[id].n_voltages =
     AS3722_SD0_VSEL_LOW_VOL_MAX + 1;
    as3722_regs->desc[id].min_uV = 410000;
   } else {
    as3722_regs->desc[id].n_voltages =
     AS3722_SD0_VSEL_MAX + 1;
    as3722_regs->desc[id].min_uV = 610000;
   }
   desc->uV_step = 10000;
   desc->linear_min_sel = 1;
   desc->enable_time = 600;
   desc->curr_table = as3722_sd016_current;
   desc->n_current_limits =
    ARRAY_SIZE(as3722_sd016_current);
   if (id == 134) {
    desc->csel_reg = AS3722_OVCURRENT_REG;
    desc->csel_mask =
     AS3722_OVCURRENT_SD0_TRIP_MASK;
   } else if (id == 133) {
    desc->csel_reg = AS3722_OVCURRENT_REG;
    desc->csel_mask =
     AS3722_OVCURRENT_SD1_TRIP_MASK;
   } else if (id == 128) {
    desc->csel_reg = AS3722_OVCURRENT_DEB_REG;
    desc->csel_mask =
     AS3722_OVCURRENT_SD6_TRIP_MASK;
   }
   break;
  case 132:
  case 131:
  case 130:
  case 129:
   if (reg_config->ext_control)
    ops = &as3722_sd2345_extcntrl_ops;
   else
    ops = &as3722_sd2345_ops;
   desc->linear_ranges = as3722_sd2345_ranges;
   desc->n_linear_ranges =
     ARRAY_SIZE(as3722_sd2345_ranges);
   break;
  default:
   if (reg_config->ext_control)
    ops = &as3722_ldo_extcntrl_ops;
   else
    ops = &as3722_ldo_ops;
   desc->enable_time = 500;
   desc->linear_ranges = as3722_ldo_ranges;
   desc->n_linear_ranges = ARRAY_SIZE(as3722_ldo_ranges);
   desc->curr_table = as3722_ldo_current;
   desc->n_current_limits = ARRAY_SIZE(as3722_ldo_current);
   desc->csel_reg = as3722_reg_lookup[id].vsel_reg;
   desc->csel_mask = AS3722_LDO_ILIMIT_MASK;
   break;
  }
  desc->ops = ops;
  config.init_data = reg_config->reg_init;
  config.of_node = as3722_regulator_matches[id].of_node;
  rdev = devm_regulator_register(&pdev->dev, desc, &config);
  if (IS_ERR(rdev)) {
   ret = PTR_ERR(rdev);
   dev_err(&pdev->dev, "regulator %d register failed %d\n",
    id, ret);
   return ret;
  }

  if (reg_config->ext_control) {
   ret = regulator_enable_regmap(rdev);
   if (ret < 0) {
    dev_err(&pdev->dev,
     "Regulator %d enable failed: %d\n",
     id, ret);
    return ret;
   }
   ret = as3722_extreg_init(as3722_regs, id,
     reg_config->ext_control);
   if (ret < 0) {
    dev_err(&pdev->dev,
     "AS3722 ext control failed: %d", ret);
    return ret;
   }
  }
 }
 return 0;
}
