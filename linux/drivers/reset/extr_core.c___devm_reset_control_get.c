
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct reset_control* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct reset_control*) ;
 struct reset_control* __reset_control_get (struct device*,char const*,int,int,int,int) ;
 int devm_reset_control_release ;
 int devres_add (struct device*,struct reset_control**) ;
 struct reset_control** devres_alloc (int ,int,int ) ;
 int devres_free (struct reset_control**) ;

struct reset_control *__devm_reset_control_get(struct device *dev,
         const char *id, int index, bool shared,
         bool optional, bool acquired)
{
 struct reset_control **ptr, *rstc;

 ptr = devres_alloc(devm_reset_control_release, sizeof(*ptr),
      GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 rstc = __reset_control_get(dev, id, index, shared, optional, acquired);
 if (!IS_ERR(rstc)) {
  *ptr = rstc;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return rstc;
}
