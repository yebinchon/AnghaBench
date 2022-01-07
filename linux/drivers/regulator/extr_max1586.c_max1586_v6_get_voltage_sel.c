
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct max1586_data {int v6_curr_sel; } ;


 struct max1586_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int max1586_v6_get_voltage_sel(struct regulator_dev *rdev)
{
 struct max1586_data *max1586 = rdev_get_drvdata(rdev);

 return max1586->v6_curr_sel;
}
