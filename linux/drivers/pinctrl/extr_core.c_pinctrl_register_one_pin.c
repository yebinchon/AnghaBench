
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_pin_desc {int number; int drv_data; scalar_t__ name; } ;
struct pinctrl_dev {TYPE_1__* desc; int pin_desc_tree; int dev; } ;
struct pin_desc {int dynamic_name; scalar_t__ name; int drv_data; struct pinctrl_dev* pctldev; } ;
struct TYPE_2__ {int name; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*,int ) ;
 scalar_t__ kasprintf (int ,char*,int ) ;
 int kfree (struct pin_desc*) ;
 struct pin_desc* kzalloc (int,int ) ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,int ) ;
 int pr_debug (char*,int ,scalar_t__,int ) ;
 int radix_tree_insert (int *,int ,struct pin_desc*) ;

__attribute__((used)) static int pinctrl_register_one_pin(struct pinctrl_dev *pctldev,
        const struct pinctrl_pin_desc *pin)
{
 struct pin_desc *pindesc;

 pindesc = pin_desc_get(pctldev, pin->number);
 if (pindesc) {
  dev_err(pctldev->dev, "pin %d already registered\n",
   pin->number);
  return -EINVAL;
 }

 pindesc = kzalloc(sizeof(*pindesc), GFP_KERNEL);
 if (!pindesc)
  return -ENOMEM;


 pindesc->pctldev = pctldev;


 if (pin->name) {
  pindesc->name = pin->name;
 } else {
  pindesc->name = kasprintf(GFP_KERNEL, "PIN%u", pin->number);
  if (!pindesc->name) {
   kfree(pindesc);
   return -ENOMEM;
  }
  pindesc->dynamic_name = 1;
 }

 pindesc->drv_data = pin->drv_data;

 radix_tree_insert(&pctldev->pin_desc_tree, pin->number, pindesc);
 pr_debug("registered pin %d (%s) on %s\n",
   pin->number, pindesc->name, pctldev->desc->name);
 return 0;
}
