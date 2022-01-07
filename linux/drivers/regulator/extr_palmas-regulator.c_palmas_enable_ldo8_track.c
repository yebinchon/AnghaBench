
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct palmas_regs_info {unsigned int ctrl_addr; unsigned int vsel_addr; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas {int dev; struct palmas_pmic_driver_data* pmic_ddata; } ;


 unsigned int PALMAS_LDO8_CTRL_LDO_TRACKING_EN ;
 unsigned int PALMAS_LDO8_VOLTAGE_VSEL_MASK ;
 size_t PALMAS_REG_LDO8 ;
 int dev_err (int ,char*) ;
 int palmas_ldo_read (struct palmas*,unsigned int,unsigned int*) ;
 int palmas_ldo_write (struct palmas*,unsigned int,unsigned int) ;

__attribute__((used)) static void palmas_enable_ldo8_track(struct palmas *palmas)
{
 unsigned int reg;
 unsigned int addr;
 int ret;
 struct palmas_pmic_driver_data *ddata = palmas->pmic_ddata;
 struct palmas_regs_info *rinfo;

 rinfo = &ddata->palmas_regs_info[PALMAS_REG_LDO8];
 addr = rinfo->ctrl_addr;

 ret = palmas_ldo_read(palmas, addr, &reg);
 if (ret) {
  dev_err(palmas->dev, "Error in reading ldo8 control reg\n");
  return;
 }

 reg |= PALMAS_LDO8_CTRL_LDO_TRACKING_EN;
 ret = palmas_ldo_write(palmas, addr, reg);
 if (ret < 0) {
  dev_err(palmas->dev, "Error in enabling tracking mode\n");
  return;
 }





 addr = rinfo->vsel_addr;
 ret = palmas_ldo_read(palmas, addr, &reg);
 if (ret) {
  dev_err(palmas->dev, "Error in reading ldo8 voltage reg\n");
  return;
 }

 reg = (reg << 1) & PALMAS_LDO8_VOLTAGE_VSEL_MASK;
 ret = palmas_ldo_write(palmas, addr, reg);
 if (ret < 0)
  dev_err(palmas->dev, "Error in setting ldo8 voltage reg\n");

 return;
}
