
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct mrfld_pinctrl {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int BUFCFG_OD_EN ;
 int BUFCFG_PD_EN ;




 int BUFCFG_PUPD_VAL_MASK ;
 int BUFCFG_PUPD_VAL_SHIFT ;
 int BUFCFG_PU_EN ;
 int BUFCFG_Px_EN_MASK ;
 int BUFCFG_SLEWSEL ;
 int EINVAL ;
 int ENOTSUPP ;





 int mrfld_read_bufcfg (struct mrfld_pinctrl*,unsigned int,int*) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct mrfld_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int mrfld_config_get(struct pinctrl_dev *pctldev, unsigned int pin,
       unsigned long *config)
{
 struct mrfld_pinctrl *mp = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u32 value, term;
 u16 arg = 0;
 int ret;

 ret = mrfld_read_bufcfg(mp, pin, &value);
 if (ret)
  return -ENOTSUPP;

 term = (value & BUFCFG_PUPD_VAL_MASK) >> BUFCFG_PUPD_VAL_SHIFT;

 switch (param) {
 case 132:
  if (value & BUFCFG_Px_EN_MASK)
   return -EINVAL;
  break;

 case 130:
  if ((value & BUFCFG_Px_EN_MASK) != BUFCFG_PU_EN)
   return -EINVAL;

  switch (term) {
  case 133:
   arg = 910;
   break;
  case 135:
   arg = 2000;
   break;
  case 136:
   arg = 20000;
   break;
  case 134:
   arg = 50000;
   break;
  }

  break;

 case 131:
  if ((value & BUFCFG_Px_EN_MASK) != BUFCFG_PD_EN)
   return -EINVAL;

  switch (term) {
  case 133:
   arg = 910;
   break;
  case 135:
   arg = 2000;
   break;
  case 136:
   arg = 20000;
   break;
  case 134:
   arg = 50000;
   break;
  }

  break;

 case 129:
  if (!(value & BUFCFG_OD_EN))
   return -EINVAL;
  break;

 case 128:
  if (!(value & BUFCFG_SLEWSEL))
   arg = 0;
  else
   arg = 1;
  break;

 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);
 return 0;
}
