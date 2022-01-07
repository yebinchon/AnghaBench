
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_desc {int id; } ;
struct regulator_config {int regmap; struct lp872x* driver_data; int init_data; int dev; } ;
struct lp872x {int num_regulators; scalar_t__ chipid; int dev; int regmap; } ;


 scalar_t__ IS_ERR (struct regulator_dev*) ;
 scalar_t__ LP8720 ;
 int PTR_ERR (struct regulator_dev*) ;
 int dev_err (int ,char*) ;
 struct regulator_dev* devm_regulator_register (int ,struct regulator_desc const*,struct regulator_config*) ;
 struct regulator_desc* lp8720_regulator_desc ;
 struct regulator_desc* lp8725_regulator_desc ;
 int lp872x_find_regulator_init_data (int ,struct lp872x*) ;

__attribute__((used)) static int lp872x_regulator_register(struct lp872x *lp)
{
 const struct regulator_desc *desc;
 struct regulator_config cfg = { };
 struct regulator_dev *rdev;
 int i;

 for (i = 0; i < lp->num_regulators; i++) {
  desc = (lp->chipid == LP8720) ? &lp8720_regulator_desc[i] :
      &lp8725_regulator_desc[i];

  cfg.dev = lp->dev;
  cfg.init_data = lp872x_find_regulator_init_data(desc->id, lp);
  cfg.driver_data = lp;
  cfg.regmap = lp->regmap;

  rdev = devm_regulator_register(lp->dev, desc, &cfg);
  if (IS_ERR(rdev)) {
   dev_err(lp->dev, "regulator register err");
   return PTR_ERR(rdev);
  }
 }

 return 0;
}
