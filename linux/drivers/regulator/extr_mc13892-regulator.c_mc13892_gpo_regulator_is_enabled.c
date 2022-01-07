
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_dev {int dummy; } ;
struct mc13xxx_regulator_priv {unsigned int powermisc_pwgt_state; int mc13xxx; } ;
struct TYPE_2__ {unsigned int enable_bit; int reg; } ;


 unsigned int MC13892_POWERMISC_PWGTSPI_M ;
 TYPE_1__* mc13892_regulators ;
 int mc13xxx_lock (int ) ;
 int mc13xxx_reg_read (int ,int ,unsigned int*) ;
 int mc13xxx_unlock (int ) ;
 struct mc13xxx_regulator_priv* rdev_get_drvdata (struct regulator_dev*) ;
 int rdev_get_id (struct regulator_dev*) ;

__attribute__((used)) static int mc13892_gpo_regulator_is_enabled(struct regulator_dev *rdev)
{
 struct mc13xxx_regulator_priv *priv = rdev_get_drvdata(rdev);
 int ret, id = rdev_get_id(rdev);
 unsigned int val;

 mc13xxx_lock(priv->mc13xxx);
 ret = mc13xxx_reg_read(priv->mc13xxx, mc13892_regulators[id].reg, &val);
 mc13xxx_unlock(priv->mc13xxx);

 if (ret)
  return ret;



 val = (val & ~MC13892_POWERMISC_PWGTSPI_M) |
  (priv->powermisc_pwgt_state ^ MC13892_POWERMISC_PWGTSPI_M);

 return (val & mc13892_regulators[id].enable_bit) != 0;
}
