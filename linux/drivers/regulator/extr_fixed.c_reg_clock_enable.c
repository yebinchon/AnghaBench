
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct fixed_voltage_data {int clk_enable_counter; int enable_clock; } ;


 int clk_prepare_enable (int ) ;
 struct fixed_voltage_data* rdev_get_drvdata (struct regulator_dev*) ;

__attribute__((used)) static int reg_clock_enable(struct regulator_dev *rdev)
{
 struct fixed_voltage_data *priv = rdev_get_drvdata(rdev);
 int ret = 0;

 ret = clk_prepare_enable(priv->enable_clock);
 if (ret)
  return ret;

 priv->clk_enable_counter++;

 return ret;
}
