
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pingroup {int dummy; } ;


 int EINVAL ;
 int ENOTSUPP ;







__attribute__((used)) static int owl_group_pinconf_val2arg(const struct owl_pingroup *g,
    unsigned int param,
    u32 *arg)
{
 switch (param) {
 case 129:
  switch (*arg) {
  case 132:
   *arg = 2;
   break;
  case 131:
   *arg = 4;
   break;
  case 130:
   *arg = 8;
   break;
  case 133:
   *arg = 12;
   break;
  default:
   return -EINVAL;
  }
  break;
 case 128:
  if (*arg)
   *arg = 1;
  else
   *arg = 0;
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
