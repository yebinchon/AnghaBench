
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_desc {int id; int n_voltages; int min_uV; int uV_step; int linear_min_sel; int enable_time; int supply_name; int enable_mask; void* enable_reg; int * ops; void* bypass_mask; void* bypass_val_on; void* bypass_reg; int vsel_mask; void* vsel_reg; int owner; int type; int name; } ;
struct regulator_config {int of_node; int * init_data; } ;
struct palmas_regs_info {int sname; int ctrl_addr; int vsel_addr; int name; } ;
struct palmas_reg_init {scalar_t__ roof_floor; } ;
struct palmas_pmic_platform_data {struct palmas_reg_init** reg_init; int ** reg_data; scalar_t__ ldo6_vibrator; scalar_t__ enable_ldo8_tracking; } ;
struct palmas_pmic_driver_data {int ldo_begin; int max_reg; int ldo_end; TYPE_1__* palmas_matches; int has_regen3; struct palmas_regs_info* palmas_regs_info; } ;
struct palmas_pmic {int palmas; int dev; struct regulator_desc* desc; } ;
struct TYPE_2__ {int of_node; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 void* PALMAS_BASE_TO_REG (int ,int ) ;
 int PALMAS_LDO1_CTRL_MODE_ACTIVE ;
 int PALMAS_LDO1_VOLTAGE_VSEL_MASK ;
 void* PALMAS_LDO9_CTRL_LDO_BYPASS_EN ;
 int PALMAS_LDO_BASE ;
 int PALMAS_LDO_NUM_VOLTAGES ;
 int PALMAS_REGEN1_CTRL_MODE_ACTIVE ;
 int PALMAS_REG_LDO6 ;
 int PALMAS_REG_LDO8 ;
 int PALMAS_REG_LDO9 ;
 int PALMAS_REG_REGEN1 ;
 int PALMAS_REG_REGEN3 ;
 int PALMAS_RESOURCE_BASE ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int THIS_MODULE ;
 int dev_err (int ,char*,char const*) ;
 struct regulator_dev* devm_regulator_register (int ,struct regulator_desc*,struct regulator_config*) ;
 int palmas_enable_ldo8_track (int ) ;
 int palmas_extreg_init (int ,int,struct palmas_reg_init*) ;
 int palmas_ldo_init (int ,int,struct palmas_reg_init*) ;
 int palmas_ops_ext_control_extreg ;
 int palmas_ops_ext_control_ldo ;
 int palmas_ops_extreg ;
 int palmas_ops_ldo ;
 int palmas_ops_ldo9 ;

__attribute__((used)) static int palmas_ldo_registration(struct palmas_pmic *pmic,
       struct palmas_pmic_driver_data *ddata,
       struct palmas_pmic_platform_data *pdata,
       const char *pdev_name,
       struct regulator_config config)
{
 int id, ret;
 struct regulator_dev *rdev;
 struct palmas_reg_init *reg_init;
 struct palmas_regs_info *rinfo;
 struct regulator_desc *desc;

 for (id = ddata->ldo_begin; id < ddata->max_reg; id++) {
  if (pdata && pdata->reg_init[id])
   reg_init = pdata->reg_init[id];
  else
   reg_init = ((void*)0);

  rinfo = &ddata->palmas_regs_info[id];





  desc = &pmic->desc[id];
  desc->name = rinfo->name;
  desc->id = id;
  desc->type = REGULATOR_VOLTAGE;
  desc->owner = THIS_MODULE;

  if (id < PALMAS_REG_REGEN1) {
   desc->n_voltages = PALMAS_LDO_NUM_VOLTAGES;
   if (reg_init && reg_init->roof_floor)
    desc->ops = &palmas_ops_ext_control_ldo;
   else
    desc->ops = &palmas_ops_ldo;
   desc->min_uV = 900000;
   desc->uV_step = 50000;
   desc->linear_min_sel = 1;
   desc->enable_time = 500;
   desc->vsel_reg = PALMAS_BASE_TO_REG(PALMAS_LDO_BASE,
           rinfo->vsel_addr);
   desc->vsel_mask = PALMAS_LDO1_VOLTAGE_VSEL_MASK;
   desc->enable_reg = PALMAS_BASE_TO_REG(PALMAS_LDO_BASE,
             rinfo->ctrl_addr);
   desc->enable_mask = PALMAS_LDO1_CTRL_MODE_ACTIVE;


   if (pdata && (id == PALMAS_REG_LDO8) &&
       pdata->enable_ldo8_tracking) {
    palmas_enable_ldo8_track(pmic->palmas);
    desc->min_uV = 450000;
    desc->uV_step = 25000;
   }


   if (pdata && pdata->ldo6_vibrator &&
       (id == PALMAS_REG_LDO6))
    desc->enable_time = 2000;

   if (id == PALMAS_REG_LDO9) {
    desc->ops = &palmas_ops_ldo9;
    desc->bypass_reg = desc->enable_reg;
    desc->bypass_val_on =
      PALMAS_LDO9_CTRL_LDO_BYPASS_EN;
    desc->bypass_mask =
      PALMAS_LDO9_CTRL_LDO_BYPASS_EN;
   }
  } else {
   if (!ddata->has_regen3 && id == PALMAS_REG_REGEN3)
    continue;

   desc->n_voltages = 1;
   if (reg_init && reg_init->roof_floor)
    desc->ops = &palmas_ops_ext_control_extreg;
   else
    desc->ops = &palmas_ops_extreg;
   desc->enable_reg =
     PALMAS_BASE_TO_REG(PALMAS_RESOURCE_BASE,
          rinfo->ctrl_addr);
   desc->enable_mask = PALMAS_REGEN1_CTRL_MODE_ACTIVE;
  }

  if (pdata)
   config.init_data = pdata->reg_data[id];
  else
   config.init_data = ((void*)0);

  desc->supply_name = rinfo->sname;
  config.of_node = ddata->palmas_matches[id].of_node;

  rdev = devm_regulator_register(pmic->dev, desc, &config);
  if (IS_ERR(rdev)) {
   dev_err(pmic->dev,
    "failed to register %s regulator\n",
    pdev_name);
   return PTR_ERR(rdev);
  }


  if (pdata) {
   reg_init = pdata->reg_init[id];
   if (reg_init) {
    if (id <= ddata->ldo_end)
     ret = palmas_ldo_init(pmic->palmas, id,
             reg_init);
    else
     ret = palmas_extreg_init(pmic->palmas,
         id, reg_init);
    if (ret)
     return ret;
   }
  }
 }

 return 0;
}
