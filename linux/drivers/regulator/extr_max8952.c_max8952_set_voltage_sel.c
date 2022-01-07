
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max8952_data {unsigned int vid0; unsigned int vid1; int vid1_gpiod; int vid0_gpiod; } ;


 int EPERM ;
 int gpiod_set_value (int ,unsigned int) ;
 struct max8952_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8952_set_voltage_sel(struct regulator_dev *rdev,
       unsigned selector)
{
 struct max8952_data *max8952 = rdev_get_drvdata(rdev);

 if (!max8952->vid0_gpiod || !max8952->vid1_gpiod) {

  return -EPERM;
 }

 max8952->vid0 = selector & 0x1;
 max8952->vid1 = (selector >> 1) & 0x1;
 gpiod_set_value(max8952->vid0_gpiod, max8952->vid0);
 gpiod_set_value(max8952->vid1_gpiod, max8952->vid1);

 return 0;
}
