
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct aat2870_regulator {int voltage_mask; int voltage_shift; int voltage_addr; struct aat2870_data* aat2870; } ;
struct aat2870_data {int (* read ) (struct aat2870_data*,int ,int*) ;} ;


 struct aat2870_regulator* rdev_get_drvdata (struct regulator_dev*) ;
 int stub1 (struct aat2870_data*,int ,int*) ;

__attribute__((used)) static int aat2870_ldo_get_voltage_sel(struct regulator_dev *rdev)
{
 struct aat2870_regulator *ri = rdev_get_drvdata(rdev);
 struct aat2870_data *aat2870 = ri->aat2870;
 u8 val;
 int ret;

 ret = aat2870->read(aat2870, ri->voltage_addr, &val);
 if (ret)
  return ret;

 return (val & ri->voltage_mask) >> ri->voltage_shift;
}
