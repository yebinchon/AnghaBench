
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_control {int dummy; } ;
struct device {int of_node; } ;


 int ENOMEM ;
 struct reset_control* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct reset_control*) ;
 int devm_reset_control_release ;
 int devres_add (struct device*,struct reset_control**) ;
 struct reset_control** devres_alloc (int ,int,int ) ;
 int devres_free (struct reset_control**) ;
 struct reset_control* of_reset_control_array_get (int ,int,int,int) ;

struct reset_control *
devm_reset_control_array_get(struct device *dev, bool shared, bool optional)
{
 struct reset_control **devres;
 struct reset_control *rstc;

 devres = devres_alloc(devm_reset_control_release, sizeof(*devres),
         GFP_KERNEL);
 if (!devres)
  return ERR_PTR(-ENOMEM);

 rstc = of_reset_control_array_get(dev->of_node, shared, optional, 1);
 if (IS_ERR(rstc)) {
  devres_free(devres);
  return rstc;
 }

 *devres = rstc;
 devres_add(dev, devres);

 return rstc;
}
