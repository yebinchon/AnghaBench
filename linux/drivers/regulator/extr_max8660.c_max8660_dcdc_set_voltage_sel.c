
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct regulator_dev {int dummy; } ;
struct max8660 {int dummy; } ;


 unsigned int MAX8660_ADTV2 ;
 unsigned int MAX8660_SDTV2 ;
 scalar_t__ MAX8660_V3 ;
 unsigned int MAX8660_VCC1 ;
 int max8660_write (struct max8660*,unsigned int,int,unsigned int) ;
 struct max8660* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max8660_dcdc_set_voltage_sel(struct regulator_dev *rdev,
     unsigned int selector)
{
 struct max8660 *max8660 = rdev_get_drvdata(rdev);
 u8 reg, bits;
 int ret;

 reg = (rdev_get_id(rdev) == MAX8660_V3) ? MAX8660_ADTV2 : MAX8660_SDTV2;
 ret = max8660_write(max8660, reg, 0, selector);
 if (ret)
  return ret;


 bits = (rdev_get_id(rdev) == MAX8660_V3) ? 0x03 : 0x30;
 return max8660_write(max8660, MAX8660_VCC1, 0xff, bits);
}
