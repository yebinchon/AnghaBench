
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stpmic1_regulator_cfg {int icc_mask; int icc_reg; } ;
struct regulator_dev {int dummy; } ;
struct regmap {int dummy; } ;


 struct stpmic1_regulator_cfg* rdev_get_drvdata (struct regulator_dev*) ;
 struct regmap* rdev_get_regmap (struct regulator_dev*) ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int stpmic1_set_icc(struct regulator_dev *rdev)
{
 struct stpmic1_regulator_cfg *cfg = rdev_get_drvdata(rdev);
 struct regmap *regmap = rdev_get_regmap(rdev);


 return regmap_update_bits(regmap, cfg->icc_reg, cfg->icc_mask,
      cfg->icc_mask);
}
