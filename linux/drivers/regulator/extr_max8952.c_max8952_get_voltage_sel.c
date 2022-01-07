
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct regulator_dev {int dummy; } ;
struct max8952_data {scalar_t__ vid1; scalar_t__ vid0; } ;


 struct max8952_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max8952_get_voltage_sel(struct regulator_dev *rdev)
{
 struct max8952_data *max8952 = rdev_get_drvdata(rdev);
 u8 vid = 0;

 if (max8952->vid0)
  vid += 1;
 if (max8952->vid1)
  vid += 2;

 return vid;
}
