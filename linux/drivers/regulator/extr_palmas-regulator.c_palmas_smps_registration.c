
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct regulator_desc {int id; unsigned int enable_mask; int min_uV; int uV_step; int n_linear_ranges; int supply_name; int owner; int type; int enable_val; void* enable_reg; int vsel_mask; void* vsel_reg; int n_voltages; int * ops; int linear_ranges; void* bypass_mask; void* bypass_val_on; void* bypass_reg; int name; int ramp_delay; } ;
struct regulator_config {int of_node; int * init_data; } ;
struct palmas_regs_info {unsigned int tstep_addr; unsigned int vsel_addr; unsigned int ctrl_addr; int sname; int name; } ;
struct palmas_reg_init {int roof_floor; } ;
struct palmas_pmic_platform_data {int ** reg_data; struct palmas_reg_init** reg_init; } ;
struct palmas_pmic_driver_data {int smps_start; int smps_end; TYPE_1__* palmas_matches; struct palmas_regs_info* palmas_regs_info; } ;
struct palmas_pmic {int* range; unsigned int* current_reg_mode; int dev; int palmas; int * ramp_delay; struct regulator_desc* desc; int smps457; int smps123; } ;
struct TYPE_2__ {int of_node; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 void* PALMAS_BASE_TO_REG (int ,unsigned int) ;
 int PALMAS_PMIC_HAS (int ,int ) ;







 int PALMAS_REG_SMPS6 ;

 int PALMAS_REG_SMPS8 ;
 unsigned int PALMAS_SMPS10_CTRL ;
 int PALMAS_SMPS10_NUM_VOLTAGES ;
 unsigned int PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK ;
 unsigned int PALMAS_SMPS12_VOLTAGE_RANGE ;
 int PALMAS_SMPS12_VOLTAGE_VSEL_MASK ;
 int PALMAS_SMPS_BASE ;
 int PALMAS_SMPS_NUM_VOLTAGES ;
 int PTR_ERR (struct regulator_dev*) ;
 int REGULATOR_VOLTAGE ;
 int SMPS10_BOOST ;
 unsigned int SMPS10_BOOST_EN ;
 void* SMPS10_BYPASS_EN ;
 unsigned int SMPS10_SWITCH_EN ;
 int SMPS10_VSEL ;
 int SMPS_CTRL_MODE_ON ;
 int THIS_MODULE ;
 int dev_err (int ,char*,...) ;
 struct regulator_dev* devm_regulator_register (int ,struct regulator_desc*,struct regulator_config*) ;
 int palmas_ops_ext_control_smps ;
 int palmas_ops_smps ;
 int palmas_ops_smps10 ;
 int palmas_smps_init (int ,int,struct palmas_reg_init*) ;
 int * palmas_smps_ramp_delay ;
 int palmas_smps_read (int ,unsigned int,unsigned int*) ;
 int smps_high_ranges ;
 int smps_low_ranges ;

__attribute__((used)) static int palmas_smps_registration(struct palmas_pmic *pmic,
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
  bool ramp_delay_support = 0;





  switch (id) {
  case 133:
  case 131:
   if (pmic->smps123)
    continue;
   if (id == 133)
    ramp_delay_support = 1;
   break;
  case 132:
   if (!pmic->smps123)
    continue;
   ramp_delay_support = 1;
   break;
  case 130:
  case 128:
   if (pmic->smps457)
    continue;
   if (id == 130)
    ramp_delay_support = 1;
   break;
  case 129:
   if (!pmic->smps457)
    continue;
   ramp_delay_support = 1;
   break;
  case 135:
  case 134:
   if (!PALMAS_PMIC_HAS(pmic->palmas, SMPS10_BOOST))
    continue;
  }
  rinfo = &ddata->palmas_regs_info[id];
  desc = &pmic->desc[id];

  if ((id == PALMAS_REG_SMPS6) || (id == PALMAS_REG_SMPS8))
   ramp_delay_support = 1;

  if (ramp_delay_support) {
   addr = rinfo->tstep_addr;
   ret = palmas_smps_read(pmic->palmas, addr, &reg);
   if (ret < 0) {
    dev_err(pmic->dev,
     "reading TSTEP reg failed: %d\n", ret);
    return ret;
   }
   desc->ramp_delay = palmas_smps_ramp_delay[reg & 0x3];
   pmic->ramp_delay[id] = desc->ramp_delay;
  }


  if (pdata && pdata->reg_init[id]) {
   reg_init = pdata->reg_init[id];
   ret = palmas_smps_init(pmic->palmas, id, reg_init);
   if (ret)
    return ret;
  } else {
   reg_init = ((void*)0);
  }


  desc->name = rinfo->name;
  desc->id = id;

  switch (id) {
  case 135:
  case 134:
   desc->n_voltages = PALMAS_SMPS10_NUM_VOLTAGES;
   desc->ops = &palmas_ops_smps10;
   desc->vsel_reg = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE,
           PALMAS_SMPS10_CTRL);
   desc->vsel_mask = SMPS10_VSEL;
   desc->enable_reg = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE,
           PALMAS_SMPS10_CTRL);
   if (id == 135)
    desc->enable_mask = SMPS10_SWITCH_EN;
   else
    desc->enable_mask = SMPS10_BOOST_EN;
   desc->bypass_reg = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE,
           PALMAS_SMPS10_CTRL);
   desc->bypass_val_on = SMPS10_BYPASS_EN;
   desc->bypass_mask = SMPS10_BYPASS_EN;
   desc->min_uV = 3750000;
   desc->uV_step = 1250000;
   break;
  default:






   addr = rinfo->vsel_addr;
   desc->n_linear_ranges = 3;

   ret = palmas_smps_read(pmic->palmas, addr, &reg);
   if (ret)
    return ret;
   if (reg & PALMAS_SMPS12_VOLTAGE_RANGE)
    pmic->range[id] = 1;
   if (pmic->range[id])
    desc->linear_ranges = smps_high_ranges;
   else
    desc->linear_ranges = smps_low_ranges;

   if (reg_init && reg_init->roof_floor)
    desc->ops = &palmas_ops_ext_control_smps;
   else
    desc->ops = &palmas_ops_smps;
   desc->n_voltages = PALMAS_SMPS_NUM_VOLTAGES;
   desc->vsel_reg = PALMAS_BASE_TO_REG(PALMAS_SMPS_BASE,
           rinfo->vsel_addr);
   desc->vsel_mask = PALMAS_SMPS12_VOLTAGE_VSEL_MASK;


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
  }

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
