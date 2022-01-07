
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct pinctrl* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct pinctrl*) ;
 int devm_pinctrl_release ;
 int devres_add (struct device*,struct pinctrl**) ;
 struct pinctrl** devres_alloc (int ,int,int ) ;
 int devres_free (struct pinctrl**) ;
 struct pinctrl* pinctrl_get (struct device*) ;

struct pinctrl *devm_pinctrl_get(struct device *dev)
{
 struct pinctrl **ptr, *p;

 ptr = devres_alloc(devm_pinctrl_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 p = pinctrl_get(dev);
 if (!IS_ERR(p)) {
  *ptr = p;
  devres_add(dev, ptr);
 } else {
  devres_free(ptr);
 }

 return p;
}
