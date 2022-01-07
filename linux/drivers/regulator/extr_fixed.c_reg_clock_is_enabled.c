
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {scalar_t__ clk_enable_counter; } ;


 struct fixed_voltage_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int reg_clock_is_enabled(struct regulator_dev *rdev)
{
 struct fixed_voltage_data *priv = rdev_get_drvdata(rdev);

 return priv->clk_enable_counter > 0;
}
