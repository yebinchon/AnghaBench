
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct palmas_regs_info {int ctrl_addr; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas_pmic {TYPE_1__* palmas; } ;
struct TYPE_2__ {struct palmas_pmic_driver_data* pmic_ddata; } ;


 unsigned int PALMAS_LDO1_CTRL_STATUS ;
 int palmas_ldo_read (TYPE_1__*,int ,unsigned int*) ;
 struct palmas_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int palmas_is_enabled_ldo(struct regulator_dev *dev)
{
 int id = rdev_get_id(dev);
 struct palmas_pmic *pmic = rdev_get_drvdata(dev);
 struct palmas_pmic_driver_data *ddata = pmic->palmas->pmic_ddata;
 struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];
 unsigned int reg;

 palmas_ldo_read(pmic->palmas, rinfo->ctrl_addr, &reg);

 reg &= PALMAS_LDO1_CTRL_STATUS;

 return !!(reg);
}
