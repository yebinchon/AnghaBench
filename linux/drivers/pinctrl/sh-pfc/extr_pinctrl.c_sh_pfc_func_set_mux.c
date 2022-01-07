
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_pfc_pinctrl {struct sh_pfc_pin_config* configs; struct sh_pfc* pfc; } ;
struct sh_pfc_pin_group {unsigned int nr_pins; int * mux; int * pins; int name; } ;
struct sh_pfc_pin_config {int mux_set; int mux_mark; scalar_t__ gpio_enabled; } ;
struct sh_pfc {int lock; TYPE_1__* info; } ;
struct pinctrl_dev {int dev; } ;
struct TYPE_2__ {struct sh_pfc_pin_group* groups; } ;


 int EBUSY ;
 int PINMUX_TYPE_FUNCTION ;
 int dev_dbg (int ,char*,int ) ;
 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sh_pfc_config_mux (struct sh_pfc*,int ,int ) ;
 int sh_pfc_get_pin_index (struct sh_pfc*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh_pfc_func_set_mux(struct pinctrl_dev *pctldev, unsigned selector,
          unsigned group)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
 struct sh_pfc *pfc = pmx->pfc;
 const struct sh_pfc_pin_group *grp = &pfc->info->groups[group];
 unsigned long flags;
 unsigned int i;
 int ret = 0;

 dev_dbg(pctldev->dev, "Configuring pin group %s\n", grp->name);

 spin_lock_irqsave(&pfc->lock, flags);

 for (i = 0; i < grp->nr_pins; ++i) {
  int idx = sh_pfc_get_pin_index(pfc, grp->pins[i]);
  struct sh_pfc_pin_config *cfg = &pmx->configs[idx];





  if (cfg->gpio_enabled) {
   ret = -EBUSY;
   goto done;
  }

  ret = sh_pfc_config_mux(pfc, grp->mux[i], PINMUX_TYPE_FUNCTION);
  if (ret < 0)
   goto done;
 }


 for (i = 0; i < grp->nr_pins; ++i) {
  int idx = sh_pfc_get_pin_index(pfc, grp->pins[i]);
  struct sh_pfc_pin_config *cfg = &pmx->configs[idx];

  cfg->mux_set = 1;
  cfg->mux_mark = grp->mux[i];
 }

done:
 spin_unlock_irqrestore(&pfc->lock, flags);
 return ret;
}
