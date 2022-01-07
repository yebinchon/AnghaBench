
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct atmel_pioctrl {struct atmel_group* groups; } ;
struct atmel_group {unsigned int pin; } ;



 unsigned int ATMEL_PIO_DRVSTR_MASK ;
 unsigned int ATMEL_PIO_DRVSTR_OFFSET ;
 unsigned int ATMEL_PIO_OPD_MASK ;
 unsigned int ATMEL_PIO_PDEN_MASK ;
 unsigned int ATMEL_PIO_PUEN_MASK ;
 unsigned int ATMEL_PIO_SCHMITT_MASK ;
 int EINVAL ;
 int ENOTSUPP ;





 unsigned int atmel_pin_config_read (struct pinctrl_dev*,unsigned int) ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct atmel_pioctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int atmel_conf_pin_config_group_get(struct pinctrl_dev *pctldev,
        unsigned group,
        unsigned long *config)
{
 struct atmel_pioctrl *atmel_pioctrl = pinctrl_dev_get_drvdata(pctldev);
 unsigned param = pinconf_to_config_param(*config), arg = 0;
 struct atmel_group *grp = atmel_pioctrl->groups + group;
 unsigned pin_id = grp->pin;
 u32 res;

 res = atmel_pin_config_read(pctldev, pin_id);

 switch (param) {
 case 130:
  if (!(res & ATMEL_PIO_PUEN_MASK))
   return -EINVAL;
  arg = 1;
  break;
 case 131:
  if ((res & ATMEL_PIO_PUEN_MASK) ||
      (!(res & ATMEL_PIO_PDEN_MASK)))
   return -EINVAL;
  arg = 1;
  break;
 case 132:
  if ((res & ATMEL_PIO_PUEN_MASK) ||
      ((res & ATMEL_PIO_PDEN_MASK)))
   return -EINVAL;
  arg = 1;
  break;
 case 129:
  if (!(res & ATMEL_PIO_OPD_MASK))
   return -EINVAL;
  arg = 1;
  break;
 case 128:
  if (!(res & ATMEL_PIO_SCHMITT_MASK))
   return -EINVAL;
  arg = 1;
  break;
 case 133:
  if (!(res & ATMEL_PIO_DRVSTR_MASK))
   return -EINVAL;
  arg = (res & ATMEL_PIO_DRVSTR_MASK) >> ATMEL_PIO_DRVSTR_OFFSET;
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);
 return 0;
}
