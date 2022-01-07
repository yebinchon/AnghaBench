
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct regulator* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct regulator*) ;
 struct regulator* _regulator_get (struct device*,char const*,int) ;
 int devm_regulator_release ;
 int devres_add (struct device*,struct regulator**) ;
 struct regulator** devres_alloc (int ,int,int ) ;
 int devres_free (struct regulator**) ;

__attribute__((used)) static struct regulator *_devm_regulator_get(struct device *dev, const char *id,
          int get_type)
{
 struct regulator **ptr, *regulator;

 ptr = devres_alloc(devm_regulator_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 regulator = _regulator_get(dev, id, get_type);
 if (!IS_ERR(regulator)) {
  *ptr = regulator;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return regulator;
}
