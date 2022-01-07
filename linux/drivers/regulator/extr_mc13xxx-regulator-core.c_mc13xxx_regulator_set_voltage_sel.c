
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct mc13xxx_regulator_priv {int mc13xxx; struct mc13xxx_regulator* mc13xxx_regulators; } ;
struct mc13xxx_regulator {unsigned int vsel_shift; int vsel_mask; int vsel_reg; } ;


 int mc13xxx_reg_rmw (int ,int ,int ,unsigned int) ;
 struct mc13xxx_regulator_priv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int mc13xxx_regulator_set_voltage_sel(struct regulator_dev *rdev,
          unsigned selector)
{
 struct mc13xxx_regulator_priv *priv = rdev_get_drvdata(rdev);
 struct mc13xxx_regulator *mc13xxx_regulators = priv->mc13xxx_regulators;
 int id = rdev_get_id(rdev);

 return mc13xxx_reg_rmw(priv->mc13xxx, mc13xxx_regulators[id].vsel_reg,
          mc13xxx_regulators[id].vsel_mask,
          selector << mc13xxx_regulators[id].vsel_shift);
}
