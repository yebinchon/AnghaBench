
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct max8660 {int* shadow_regs; } ;


 size_t MAX8660_MDTV2 ;
 struct max8660* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8660_ldo5_get_voltage_sel(struct regulator_dev *rdev)
{
 struct max8660 *max8660 = rdev_get_drvdata(rdev);

 u8 selector = max8660->shadow_regs[MAX8660_MDTV2];
 return selector;
}
