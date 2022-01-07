
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {TYPE_2__* desc; } ;
struct pin_desc {int name; } ;
struct TYPE_4__ {unsigned int npins; TYPE_1__* pins; } ;
struct TYPE_3__ {unsigned int number; } ;


 int EINVAL ;
 struct pin_desc* pin_desc_get (struct pinctrl_dev*,unsigned int) ;
 int strcmp (char const*,int ) ;

int pin_get_from_name(struct pinctrl_dev *pctldev, const char *name)
{
 unsigned i, pin;


 for (i = 0; i < pctldev->desc->npins; i++) {
  struct pin_desc *desc;

  pin = pctldev->desc->pins[i].number;
  desc = pin_desc_get(pctldev, pin);

  if (desc && !strcmp(name, desc->name))
   return pin;
 }

 return -EINVAL;
}
