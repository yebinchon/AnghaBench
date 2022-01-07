
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8660 {int dummy; } ;


 int MAX8660_MDTV2 ;
 int MAX8660_VCC1 ;
 int max8660_write (struct max8660*,int ,int,int) ;
 struct max8660* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8660_ldo5_set_voltage_sel(struct regulator_dev *rdev,
     unsigned int selector)
{
 struct max8660 *max8660 = rdev_get_drvdata(rdev);
 int ret;

 ret = max8660_write(max8660, MAX8660_MDTV2, 0, selector);
 if (ret)
  return ret;


 return max8660_write(max8660, MAX8660_VCC1, 0xff, 0xc0);
}
