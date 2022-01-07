
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct pinctrl_dev {int dummy; } ;
struct msm_pingroup {int in_bit; } ;
struct msm_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {int pull_no_keeper; struct msm_pingroup* groups; } ;


 unsigned int BIT (int ) ;
 int EINVAL ;
 int ENOTSUPP ;
 unsigned int MSM_KEEPER ;
 unsigned int MSM_NO_PULL ;
 unsigned int MSM_PULL_DOWN ;
 unsigned int MSM_PULL_UP ;
 unsigned int MSM_PULL_UP_NO_KEEPER ;







 int msm_config_reg (struct msm_pinctrl*,struct msm_pingroup const*,unsigned int,unsigned int*,unsigned int*) ;
 unsigned int msm_readl_ctl (struct msm_pinctrl*,struct msm_pingroup const*) ;
 unsigned int msm_readl_io (struct msm_pinctrl*,struct msm_pingroup const*) ;
 unsigned int msm_regval_to_drive (unsigned int) ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct msm_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int msm_config_group_get(struct pinctrl_dev *pctldev,
    unsigned int group,
    unsigned long *config)
{
 const struct msm_pingroup *g;
 struct msm_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 unsigned param = pinconf_to_config_param(*config);
 unsigned mask;
 unsigned arg;
 unsigned bit;
 int ret;
 u32 val;

 g = &pctrl->soc->groups[group];

 ret = msm_config_reg(pctrl, g, param, &mask, &bit);
 if (ret < 0)
  return ret;

 val = msm_readl_ctl(pctrl, g);
 arg = (val >> bit) & mask;


 switch (param) {
 case 133:
  if (arg != MSM_NO_PULL)
   return -EINVAL;
  arg = 1;
  break;
 case 132:
  if (arg != MSM_PULL_DOWN)
   return -EINVAL;
  arg = 1;
  break;
 case 134:
  if (pctrl->soc->pull_no_keeper)
   return -ENOTSUPP;

  if (arg != MSM_KEEPER)
   return -EINVAL;
  arg = 1;
  break;
 case 131:
  if (pctrl->soc->pull_no_keeper)
   arg = arg == MSM_PULL_UP_NO_KEEPER;
  else
   arg = arg == MSM_PULL_UP;
  if (!arg)
   return -EINVAL;
  break;
 case 130:
  arg = msm_regval_to_drive(arg);
  break;
 case 128:

  if (!arg)
   return -EINVAL;

  val = msm_readl_io(pctrl, g);
  arg = !!(val & BIT(g->in_bit));
  break;
 case 129:

  if (arg)
   return -EINVAL;
  arg = 1;
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
