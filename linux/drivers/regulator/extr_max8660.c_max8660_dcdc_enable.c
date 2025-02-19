
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct max8660 {int dummy; } ;


 int MAX8660_OVER1 ;
 scalar_t__ MAX8660_V3 ;
 int max8660_write (struct max8660*,int ,int,int) ;
 struct max8660* rdev_get_drvdata (struct regulator_dev*) ;
 scalar_t__ rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int max8660_dcdc_enable(struct regulator_dev *rdev)
{
 struct max8660 *max8660 = rdev_get_drvdata(rdev);
 u8 bit = (rdev_get_id(rdev) == MAX8660_V3) ? 1 : 4;

 return max8660_write(max8660, MAX8660_OVER1, 0xff, bit);
}
