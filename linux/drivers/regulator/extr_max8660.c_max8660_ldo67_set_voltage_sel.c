
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8660 {int dummy; } ;


 int MAX8660_L12VCR ;
 scalar_t__ MAX8660_V6 ;
 int max8660_write (struct max8660*,int ,int,unsigned int) ;
 struct max8660* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max8660_ldo67_set_voltage_sel(struct regulator_dev *rdev,
      unsigned int selector)
{
 struct max8660 *max8660 = rdev_get_drvdata(rdev);

 if (rdev_get_id(rdev) == MAX8660_V6)
  return max8660_write(max8660, MAX8660_L12VCR, 0xf0, selector);
 else
  return max8660_write(max8660, MAX8660_L12VCR, 0x0f,
         selector << 4);
}
