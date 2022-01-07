
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int priority; int notifier_call; } ;
struct msm_pinctrl {int dev; TYPE_2__ restart_nb; TYPE_1__* soc; } ;
struct msm_function {int name; } ;
struct TYPE_3__ {int nfunctions; struct msm_function* functions; } ;


 int dev_err (int ,char*) ;
 int msm_ps_hold_poweroff ;
 int msm_ps_hold_restart ;
 int pm_power_off ;
 struct msm_pinctrl* poweroff_pctrl ;
 scalar_t__ register_restart_handler (TYPE_2__*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void msm_pinctrl_setup_pm_reset(struct msm_pinctrl *pctrl)
{
 int i;
 const struct msm_function *func = pctrl->soc->functions;

 for (i = 0; i < pctrl->soc->nfunctions; i++)
  if (!strcmp(func[i].name, "ps_hold")) {
   pctrl->restart_nb.notifier_call = msm_ps_hold_restart;
   pctrl->restart_nb.priority = 128;
   if (register_restart_handler(&pctrl->restart_nb))
    dev_err(pctrl->dev,
     "failed to setup restart handler.\n");
   poweroff_pctrl = pctrl;
   pm_power_off = msm_ps_hold_poweroff;
   break;
  }
}
