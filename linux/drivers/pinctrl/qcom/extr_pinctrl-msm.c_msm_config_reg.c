
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_pingroup {unsigned int pull_bit; unsigned int drv_bit; unsigned int oe_bit; } ;
struct msm_pinctrl {int dummy; } ;


 int ENOTSUPP ;
__attribute__((used)) static int msm_config_reg(struct msm_pinctrl *pctrl,
     const struct msm_pingroup *g,
     unsigned param,
     unsigned *mask,
     unsigned *bit)
{
 switch (param) {
 case 133:
 case 132:
 case 134:
 case 131:
  *bit = g->pull_bit;
  *mask = 3;
  break;
 case 130:
  *bit = g->drv_bit;
  *mask = 7;
  break;
 case 128:
 case 129:
  *bit = g->oe_bit;
  *mask = 1;
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
