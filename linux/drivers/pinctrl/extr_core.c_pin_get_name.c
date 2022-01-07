
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dev; } ;
struct pin_desc {char const* name; } ;


 int dev_err (int ,char*,unsigned int const) ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int const) ;

const char *pin_get_name(struct pinctrl_dev *pctldev, const unsigned pin)
{
 const struct pin_desc *desc;

 desc = pin_desc_get(pctldev, pin);
 if (!desc) {
  dev_err(pctldev->dev, "failed to get pin(%d) name\n",
   pin);
  return ((void*)0);
 }

 return desc->name;
}
