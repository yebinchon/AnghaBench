
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;
struct regulator_desc {int dummy; } ;
struct regulator_config {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct regulator_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct regulator_dev*) ;
 int devm_rdev_release ;
 int devres_add (struct device*,struct regulator_dev**) ;
 struct regulator_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct regulator_dev**) ;
 struct regulator_dev* regulator_register (struct regulator_desc const*,struct regulator_config const*) ;

struct regulator_dev *devm_regulator_register(struct device *dev,
      const struct regulator_desc *regulator_desc,
      const struct regulator_config *config)
{
 struct regulator_dev **ptr, *rdev;

 ptr = devres_alloc(devm_rdev_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 rdev = regulator_register(regulator_desc, config);
 if (!IS_ERR(rdev)) {
  *ptr = rdev;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return rdev;
}
