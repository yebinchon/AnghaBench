
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct msm_pingroup {int * funcs; int nfuncs; } ;
struct msm_pinctrl {TYPE_1__* soc; } ;
struct TYPE_2__ {struct msm_pingroup* groups; } ;


 int msm_pinmux_set_mux (struct pinctrl_dev*,int ,unsigned int) ;
 struct msm_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int msm_pinmux_request_gpio(struct pinctrl_dev *pctldev,
       struct pinctrl_gpio_range *range,
       unsigned offset)
{
 struct msm_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 const struct msm_pingroup *g = &pctrl->soc->groups[offset];


 if (!g->nfuncs)
  return 0;


 return msm_pinmux_set_mux(pctldev, g->funcs[0], offset);
}
