
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct pinctrl_desc {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct pinctrl_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct pinctrl_dev*) ;
 int devm_pinctrl_dev_release ;
 int devres_add (struct device*,struct pinctrl_dev**) ;
 struct pinctrl_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct pinctrl_dev**) ;
 struct pinctrl_dev* pinctrl_register (struct pinctrl_desc*,struct device*,void*) ;

struct pinctrl_dev *devm_pinctrl_register(struct device *dev,
       struct pinctrl_desc *pctldesc,
       void *driver_data)
{
 struct pinctrl_dev **ptr, *pctldev;

 ptr = devres_alloc(devm_pinctrl_dev_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 pctldev = pinctrl_register(pctldesc, dev, driver_data);
 if (IS_ERR(pctldev)) {
  devres_free(ptr);
  return pctldev;
 }

 *ptr = pctldev;
 devres_add(dev, ptr);

 return pctldev;
}
