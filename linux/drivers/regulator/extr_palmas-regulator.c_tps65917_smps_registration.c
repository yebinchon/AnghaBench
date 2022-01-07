
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_desc {int n_linear_ranges; int id; int ramp_delay; unsigned int enable_mask; int supply_name; int owner; int type; int enable_val; void* enable_reg; int vsel_mask; void* vsel_reg; int n_voltages; int * ops; int linear_ranges; int name; } ;
struct regulator_config {int of_node; int * init_data; } ;
struct palmas_regs_info {unsigned int vsel_addr; unsigned int ctrl_addr; int sname; int name; } ;
struct palmas_reg_init {scalar_t__ roof_floor; } ;
struct palmas_pmic_platform_data {int ** reg_data; struct palmas_reg_init** reg_init; } ;
struct palmas_pmic_driver_data {int smps_start; int smps_end; TYPE_1__* palmas_matches; struct palmas_regs_info* palmas_regs_info; } ;
struct palmas_pmic {int* range; unsigned int* current_reg_mode; int dev; int palmas; scalar_t__ smps12; struct regulator_desc* desc; } ;
struct TYPE_2__ {int of_node; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 void* PALMAS_BASE_TO_REG (int ,unsigned int) ;
 unsigned int PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK ;
 int PALMAS_SMPS12_VOLTAGE_VSEL_MASK ;
 int PALMAS_SMPS_BASE ;
 int PALMAS_SMPS_NUM_VOLTAGES ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int SMPS_CTRL_MODE_ON ;
 int THIS_MODULE ;
 int TPS65917_REG_SMPS1 ;
 int TPS65917_REG_SMPS2 ;
 unsigned int TPS65917_SMPS1_VOLTAGE_RANGE ;
 int dev_err (int ,char*,char const*) ;
 struct regulator_dev* devm_regulator_register (int ,struct regulator_desc*,struct regulator_config*) ;
 int palmas_smps_init (int ,int,struct palmas_reg_init*) ;
 int palmas_smps_read (int ,unsigned int,unsigned int*) ;
 int smps_high_ranges ;
 int smps_low_ranges ;
 int tps65917_ops_ext_control_smps ;
 int tps65917_ops_smps ;

__attribute__((used)) static int tps65917_smps_registration(struct palmas_pmic *pmic,
          struct palmas_pmic_driver_data *ddata,
          struct palmas_pmic_platform_data *pdata,
          const char *pdev_name,
          struct regulator_config config)
{
 int id, ret;
 unsigned int addr, reg;
 struct regulator_dev *rdev;
 struct palmas_reg_init *reg_init;
 struct palmas_regs_info *rinfo;
 struct regulator_desc *desc;

 for (id = ddata->smps_start; id <= ddata->smps_end; id++) {




  desc = &pmic->desc[id];
  desc->n_linear_ranges = 3;
  if ((id == TPS65917_REG_SMPS2 || id == TPS65917_REG_SMPS1) &&
      pmic->smps12)
   continue;


  if (pdata && pdata->reg_init[id]) {
   reg_init = pdata->reg_init[id];
   ret = palmas_smps_init(pmic->palmas, id, reg_init);
   if (ret)
    return ret;
  } else {
   reg_init = ((void*)0);
  }
  rinfo = &ddata->palmas_regs_info[id];


  desc->name = rinfo->name;
  desc->id = id;







  addr = rinfo->vsel_addr;

  ret = palmas_smps_read(pmic->palmas, addr, &reg);
  if (ret)
   return ret;
  if (reg & TPS65917_SMPS1_VOLTAGE_RANGE)
   pmic->range[id] = 1;

  if (pmic->range[id])
   desc->linear_ranges = smps_high_ranges;
  else
   desc->linear_ranges = smps_low_ranges;

  if (reg_init && reg_init->roof_floor)
   desc->ops = &tps65917_ops_ext_control_smps;
  else
   desc->ops = &tps65917_ops_smps;
  desc->n_voltages = PALMAS_SMPS_NUM_VOLTAGES;
  desc->vsel_reg = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE,
          rinfo->vsel_addr);
  desc->vsel_mask = PALMAS_SMPS12_VOLTAGE_VSEL_MASK;
  desc->ramp_delay = 2500;


  addr = rinfo->ctrl_addr;
  ret = palmas_smps_read(pmic->palmas, addr, &reg);
  if (ret)
   return ret;
  pmic->current_reg_mode[id] = reg &
    PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK;
  desc->enable_reg = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE,
            rinfo->ctrl_addr);
  desc->enable_mask = PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK;

  desc->enable_val = SMPS_CTRL_MODE_ON;

  desc->type = REGULATOR_VOLTAGE;
  desc->owner = THIS_MODULE;

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
 }

 return 0;
}
