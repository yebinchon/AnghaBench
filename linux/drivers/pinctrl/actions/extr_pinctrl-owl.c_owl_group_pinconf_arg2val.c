
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pingroup {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int OWL_PINCONF_DRV_12MA ;
 int OWL_PINCONF_DRV_2MA ;
 int OWL_PINCONF_DRV_4MA ;
 int OWL_PINCONF_DRV_8MA ;
 int OWL_PINCONF_SLEW_FAST ;
 int OWL_PINCONF_SLEW_SLOW ;



__attribute__((used)) static int owl_group_pinconf_arg2val(const struct owl_pingroup *g,
    unsigned int param,
    u32 *arg)
{
 switch (param) {
 case 129:
  switch (*arg) {
  case 2:
   *arg = OWL_PINCONF_DRV_2MA;
   break;
  case 4:
   *arg = OWL_PINCONF_DRV_4MA;
   break;
  case 8:
   *arg = OWL_PINCONF_DRV_8MA;
   break;
  case 12:
   *arg = OWL_PINCONF_DRV_12MA;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 128:
  if (*arg)
   *arg = OWL_PINCONF_SLEW_FAST;
  else
   *arg = OWL_PINCONF_SLEW_SLOW;
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
