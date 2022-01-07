
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_padinfo {int dummy; } ;


 int ENOTSUPP ;
 int OWL_PINCONF_PULL_DOWN ;
 int OWL_PINCONF_PULL_UP ;




__attribute__((used)) static int s700_pad_pinconf_arg2val(const struct owl_padinfo *info,
    unsigned int param,
    u32 *arg)
{
 switch (param) {
 case 130:
  *arg = OWL_PINCONF_PULL_DOWN;
  break;
 case 129:
  *arg = OWL_PINCONF_PULL_UP;
  break;
 case 128:
  *arg = (*arg >= 1 ? 1 : 0);
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
