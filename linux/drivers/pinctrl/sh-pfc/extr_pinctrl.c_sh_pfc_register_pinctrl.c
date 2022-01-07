
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int npins; int pins; int * confops; int * pmxops; int * pctlops; int owner; int name; } ;
struct sh_pfc_pinctrl {int pctl; TYPE_2__ pctl_desc; int pins; struct sh_pfc* pfc; } ;
struct sh_pfc {int dev; TYPE_1__* info; } ;
struct TYPE_3__ {int nr_pins; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (int ,char*,int) ;
 struct sh_pfc_pinctrl* devm_kzalloc (int ,int,int ) ;
 int devm_pinctrl_register_and_init (int ,TYPE_2__*,struct sh_pfc_pinctrl*,int *) ;
 int pinctrl_enable (int ) ;
 int sh_pfc_map_pins (struct sh_pfc*,struct sh_pfc_pinctrl*) ;
 int sh_pfc_pinconf_ops ;
 int sh_pfc_pinctrl_ops ;
 int sh_pfc_pinmux_ops ;
 scalar_t__ unlikely (int) ;

int sh_pfc_register_pinctrl(struct sh_pfc *pfc)
{
 struct sh_pfc_pinctrl *pmx;
 int ret;

 pmx = devm_kzalloc(pfc->dev, sizeof(*pmx), GFP_KERNEL);
 if (unlikely(!pmx))
  return -ENOMEM;

 pmx->pfc = pfc;

 ret = sh_pfc_map_pins(pfc, pmx);
 if (ret < 0)
  return ret;

 pmx->pctl_desc.name = DRV_NAME;
 pmx->pctl_desc.owner = THIS_MODULE;
 pmx->pctl_desc.pctlops = &sh_pfc_pinctrl_ops;
 pmx->pctl_desc.pmxops = &sh_pfc_pinmux_ops;
 pmx->pctl_desc.confops = &sh_pfc_pinconf_ops;
 pmx->pctl_desc.pins = pmx->pins;
 pmx->pctl_desc.npins = pfc->info->nr_pins;

 ret = devm_pinctrl_register_and_init(pfc->dev, &pmx->pctl_desc, pmx,
          &pmx->pctl);
 if (ret) {
  dev_err(pfc->dev, "could not register: %i\n", ret);

  return ret;
 }

 return pinctrl_enable(pmx->pctl);
}
