
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_regs_info {unsigned int ctrl_addr; } ;
struct palmas_reg_init {scalar_t__ roof_floor; scalar_t__ mode_sleep; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas {int dev; struct palmas_pmic_driver_data* pmic_ddata; } ;


 unsigned int PALMAS_REGEN1_CTRL_MODE_ACTIVE ;
 unsigned int PALMAS_REGEN1_CTRL_MODE_SLEEP ;
 int PALMAS_RESOURCE_BASE ;
 int dev_err (int ,char*,unsigned int,int) ;
 int palmas_regulator_config_external (struct palmas*,int,struct palmas_reg_init*) ;
 int palmas_update_bits (struct palmas*,int ,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static int palmas_extreg_init(struct palmas *palmas, int id,
  struct palmas_reg_init *reg_init)
{
 unsigned int addr;
 int ret;
 unsigned int val = 0;
 struct palmas_pmic_driver_data *ddata = palmas->pmic_ddata;
 struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];

 addr = rinfo->ctrl_addr;

 if (reg_init->mode_sleep)
  val = PALMAS_REGEN1_CTRL_MODE_SLEEP;

 ret = palmas_update_bits(palmas, PALMAS_RESOURCE_BASE,
   addr, PALMAS_REGEN1_CTRL_MODE_SLEEP, val);
 if (ret < 0) {
  dev_err(palmas->dev, "Resource reg 0x%02x update failed %d\n",
   addr, ret);
  return ret;
 }

 if (reg_init->roof_floor) {

  ret = palmas_update_bits(palmas, PALMAS_RESOURCE_BASE,
    addr, PALMAS_REGEN1_CTRL_MODE_ACTIVE,
    PALMAS_REGEN1_CTRL_MODE_ACTIVE);
  if (ret < 0) {
   dev_err(palmas->dev,
    "Resource Register 0x%02x update failed %d\n",
    addr, ret);
   return ret;
  }
  return palmas_regulator_config_external(palmas, id, reg_init);
 }
 return 0;
}
