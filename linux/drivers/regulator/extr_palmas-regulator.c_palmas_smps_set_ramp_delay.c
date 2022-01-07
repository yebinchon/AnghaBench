
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct palmas_regs_info {int tstep_addr; } ;
struct palmas_pmic_driver_data {struct palmas_regs_info* palmas_regs_info; } ;
struct palmas_pmic {int * ramp_delay; TYPE_1__* palmas; } ;
struct TYPE_2__ {int dev; struct palmas_pmic_driver_data* pmic_ddata; } ;




 int dev_err (int ,char*,int) ;
 int * palmas_smps_ramp_delay ;
 int palmas_smps_write (TYPE_1__*,int ,unsigned int) ;
 struct palmas_pmic* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int palmas_smps_set_ramp_delay(struct regulator_dev *rdev,
   int ramp_delay)
{
 int id = rdev_get_id(rdev);
 struct palmas_pmic *pmic = rdev_get_drvdata(rdev);
 struct palmas_pmic_driver_data *ddata = pmic->palmas->pmic_ddata;
 struct palmas_regs_info *rinfo = &ddata->palmas_regs_info[id];
 unsigned int reg = 0;
 int ret;


 switch (id) {
 case 129:
 case 128:
  return 0;
 }

 if (ramp_delay <= 0)
  reg = 0;
 else if (ramp_delay <= 2500)
  reg = 3;
 else if (ramp_delay <= 5000)
  reg = 2;
 else
  reg = 1;

 ret = palmas_smps_write(pmic->palmas, rinfo->tstep_addr, reg);
 if (ret < 0) {
  dev_err(pmic->palmas->dev, "TSTEP write failed: %d\n", ret);
  return ret;
 }

 pmic->ramp_delay[id] = palmas_smps_ramp_delay[reg];
 return ret;
}
