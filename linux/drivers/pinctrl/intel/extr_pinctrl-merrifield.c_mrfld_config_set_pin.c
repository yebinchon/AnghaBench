
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mrfld_pinctrl {int lock; } ;


 int BUFCFG_OD_EN ;
 int BUFCFG_PD_EN ;
 int BUFCFG_PUPD_VAL_20K ;
 int BUFCFG_PUPD_VAL_2K ;
 int BUFCFG_PUPD_VAL_50K ;
 int BUFCFG_PUPD_VAL_MASK ;
 int BUFCFG_PUPD_VAL_SHIFT ;
 int BUFCFG_PU_EN ;
 int BUFCFG_Px_EN_MASK ;
 int BUFCFG_SLEWSEL ;
 int EINVAL ;





 int mrfld_update_bufcfg (struct mrfld_pinctrl*,unsigned int,int,int) ;
 unsigned int pinconf_to_config_argument (unsigned long) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int mrfld_config_set_pin(struct mrfld_pinctrl *mp, unsigned int pin,
    unsigned long config)
{
 unsigned int param = pinconf_to_config_param(config);
 unsigned int arg = pinconf_to_config_argument(config);
 u32 bits = 0, mask = 0;
 unsigned long flags;

 switch (param) {
 case 132:
  mask |= BUFCFG_Px_EN_MASK | BUFCFG_PUPD_VAL_MASK;
  break;

 case 130:
  mask |= BUFCFG_Px_EN_MASK | BUFCFG_PUPD_VAL_MASK;
  bits |= BUFCFG_PU_EN;

  switch (arg) {
  case 50000:
   bits |= BUFCFG_PUPD_VAL_50K << BUFCFG_PUPD_VAL_SHIFT;
   break;
  case 20000:
   bits |= BUFCFG_PUPD_VAL_20K << BUFCFG_PUPD_VAL_SHIFT;
   break;
  case 2000:
   bits |= BUFCFG_PUPD_VAL_2K << BUFCFG_PUPD_VAL_SHIFT;
   break;
  default:
   return -EINVAL;
  }

  break;

 case 131:
  mask |= BUFCFG_Px_EN_MASK | BUFCFG_PUPD_VAL_MASK;
  bits |= BUFCFG_PD_EN;

  switch (arg) {
  case 50000:
   bits |= BUFCFG_PUPD_VAL_50K << BUFCFG_PUPD_VAL_SHIFT;
   break;
  case 20000:
   bits |= BUFCFG_PUPD_VAL_20K << BUFCFG_PUPD_VAL_SHIFT;
   break;
  case 2000:
   bits |= BUFCFG_PUPD_VAL_2K << BUFCFG_PUPD_VAL_SHIFT;
   break;
  default:
   return -EINVAL;
  }

  break;

 case 129:
  mask |= BUFCFG_OD_EN;
  if (arg)
   bits |= BUFCFG_OD_EN;
  break;

 case 128:
  mask |= BUFCFG_SLEWSEL;
  if (arg)
   bits |= BUFCFG_SLEWSEL;
  break;
 }

 raw_spin_lock_irqsave(&mp->lock, flags);
 mrfld_update_bufcfg(mp, pin, bits, mask);
 raw_spin_unlock_irqrestore(&mp->lock, flags);

 return 0;
}
