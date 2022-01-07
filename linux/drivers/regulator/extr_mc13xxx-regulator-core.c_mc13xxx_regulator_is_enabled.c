
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct mc13xxx_regulator_priv {int mc13xxx; struct mc13xxx_regulator* mc13xxx_regulators; } ;
struct mc13xxx_regulator {unsigned int enable_bit; int reg; } ;


 int mc13xxx_reg_read (int ,int ,unsigned int*) ;
 struct mc13xxx_regulator_priv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int mc13xxx_regulator_is_enabled(struct regulator_dev *rdev)
{
 struct mc13xxx_regulator_priv *priv = rdev_get_drvdata(rdev);
 struct mc13xxx_regulator *mc13xxx_regulators = priv->mc13xxx_regulators;
 int ret, id = rdev_get_id(rdev);
 unsigned int val;

 ret = mc13xxx_reg_read(priv->mc13xxx, mc13xxx_regulators[id].reg, &val);
 if (ret)
  return ret;

 return (val & mc13xxx_regulators[id].enable_bit) != 0;
}
