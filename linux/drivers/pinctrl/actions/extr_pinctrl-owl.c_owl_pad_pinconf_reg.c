
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct owl_padinfo {TYPE_1__* st; TYPE_2__* pullctl; } ;
struct TYPE_4__ {int width; int shift; int reg; } ;
struct TYPE_3__ {int width; int shift; int reg; } ;


 int EINVAL ;
 int ENOTSUPP ;






__attribute__((used)) static int owl_pad_pinconf_reg(const struct owl_padinfo *info,
    unsigned int param,
    u32 *reg,
    u32 *bit,
    u32 *width)
{
 switch (param) {
 case 132:
 case 131:
 case 130:
 case 129:
  if (!info->pullctl)
   return -EINVAL;
  *reg = info->pullctl->reg;
  *bit = info->pullctl->shift;
  *width = info->pullctl->width;
  break;
 case 128:
  if (!info->st)
   return -EINVAL;
  *reg = info->st->reg;
  *bit = info->st->shift;
  *width = info->st->width;
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
