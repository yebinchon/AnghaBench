
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_regs_info {unsigned int ctrl_addr; unsigned int vsel_addr; } ;
struct palmas_reg_init {unsigned int mode_sleep; unsigned int vsel; scalar_t__ roof_floor; int warm_reset; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas {struct palmas_pmic_driver_data* pmic_ddata; } ;




 unsigned int PALMAS_SMPS10_CTRL_MODE_SLEEP_MASK ;
 unsigned int PALMAS_SMPS10_CTRL_MODE_SLEEP_SHIFT ;
 unsigned int PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK ;
 unsigned int PALMAS_SMPS12_CTRL_MODE_SLEEP_MASK ;
 unsigned int PALMAS_SMPS12_CTRL_MODE_SLEEP_SHIFT ;
 unsigned int PALMAS_SMPS12_CTRL_ROOF_FLOOR_EN ;
 unsigned int PALMAS_SMPS12_CTRL_WR_S ;
 unsigned int SMPS_CTRL_MODE_ON ;
 int palmas_regulator_config_external (struct palmas*,int,struct palmas_reg_init*) ;
 int palmas_smps_read (struct palmas*,unsigned int,unsigned int*) ;
 int palmas_smps_write (struct palmas*,unsigned int,unsigned int) ;

__attribute__((used)) static int palmas_smps_init(struct palmas *palmas, int id,
  struct palmas_reg_init *reg_init)
{
 unsigned int reg;
 int ret;
 struct palmas_pmic_driver_data *ddata = palmas->pmic_ddata;
 struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];
 unsigned int addr = rinfo->ctrl_addr;

 ret = palmas_smps_read(palmas, addr, &reg);
 if (ret)
  return ret;

 switch (id) {
 case 129:
 case 128:
  reg &= ~PALMAS_SMPS10_CTRL_MODE_SLEEP_MASK;
  if (reg_init->mode_sleep)
   reg |= reg_init->mode_sleep <<
     PALMAS_SMPS10_CTRL_MODE_SLEEP_SHIFT;
  break;
 default:
  if (reg_init->warm_reset)
   reg |= PALMAS_SMPS12_CTRL_WR_S;
  else
   reg &= ~PALMAS_SMPS12_CTRL_WR_S;

  if (reg_init->roof_floor)
   reg |= PALMAS_SMPS12_CTRL_ROOF_FLOOR_EN;
  else
   reg &= ~PALMAS_SMPS12_CTRL_ROOF_FLOOR_EN;

  reg &= ~PALMAS_SMPS12_CTRL_MODE_SLEEP_MASK;
  if (reg_init->mode_sleep)
   reg |= reg_init->mode_sleep <<
     PALMAS_SMPS12_CTRL_MODE_SLEEP_SHIFT;
 }

 ret = palmas_smps_write(palmas, addr, reg);
 if (ret)
  return ret;

 if (rinfo->vsel_addr && reg_init->vsel) {

  reg = reg_init->vsel;

  ret = palmas_smps_write(palmas, rinfo->vsel_addr, reg);
  if (ret)
   return ret;
 }

 if (reg_init->roof_floor && (id != 129) &&
   (id != 128)) {

  ret = palmas_smps_read(palmas, addr, &reg);
  if (ret < 0)
   return ret;

  if (!(reg & PALMAS_SMPS12_CTRL_MODE_ACTIVE_MASK)) {
   reg |= SMPS_CTRL_MODE_ON;
   ret = palmas_smps_write(palmas, addr, reg);
   if (ret < 0)
    return ret;
  }
  return palmas_regulator_config_external(palmas, id, reg_init);
 }
 return 0;
}
