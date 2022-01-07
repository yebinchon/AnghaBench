
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_pfc_pinctrl {struct sh_pfc_pin_config* configs; struct sh_pfc* pfc; } ;
struct sh_pfc_pin_config {int gpio_enabled; } ;
struct sh_pfc_pin {int enum_id; } ;
struct sh_pfc {int lock; TYPE_1__* info; int gpio; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct sh_pfc_pin* pins; } ;


 int PINMUX_TYPE_GPIO ;
 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sh_pfc_config_mux (struct sh_pfc*,int ,int ) ;
 int sh_pfc_get_pin_index (struct sh_pfc*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh_pfc_gpio_request_enable(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned offset)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
 struct sh_pfc *pfc = pmx->pfc;
 int idx = sh_pfc_get_pin_index(pfc, offset);
 struct sh_pfc_pin_config *cfg = &pmx->configs[idx];
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&pfc->lock, flags);

 if (!pfc->gpio) {



  const struct sh_pfc_pin *pin = &pfc->info->pins[idx];

  ret = sh_pfc_config_mux(pfc, pin->enum_id, PINMUX_TYPE_GPIO);
  if (ret < 0)
   goto done;
 }

 cfg->gpio_enabled = 1;

 ret = 0;

done:
 spin_unlock_irqrestore(&pfc->lock, flags);

 return ret;
}
