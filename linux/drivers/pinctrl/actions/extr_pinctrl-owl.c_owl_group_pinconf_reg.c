
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct owl_pingroup {int sr_width; int sr_shift; int sr_reg; int drv_width; int drv_shift; int drv_reg; } ;


 int EINVAL ;
 int ENOTSUPP ;



__attribute__((used)) static int owl_group_pinconf_reg(const struct owl_pingroup *g,
    unsigned int param,
    u32 *reg,
    u32 *bit,
    u32 *width)
{
 switch (param) {
 case 129:
  if (g->drv_reg < 0)
   return -EINVAL;
  *reg = g->drv_reg;
  *bit = g->drv_shift;
  *width = g->drv_width;
  break;
 case 128:
  if (g->sr_reg < 0)
   return -EINVAL;
  *reg = g->sr_reg;
  *bit = g->sr_shift;
  *width = g->sr_width;
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
