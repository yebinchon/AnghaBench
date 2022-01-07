
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_pfc_pinctrl {struct sh_pfc* pfc; } ;
struct sh_pfc_pin {int configs; int enum_id; } ;
struct sh_pfc {int lock; TYPE_1__* info; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {struct sh_pfc_pin* pins; } ;


 int EINVAL ;
 int PINMUX_TYPE_INPUT ;
 int PINMUX_TYPE_OUTPUT ;
 unsigned int SH_PFC_PIN_CFG_INPUT ;
 unsigned int SH_PFC_PIN_CFG_OUTPUT ;
 struct sh_pfc_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int sh_pfc_config_mux (struct sh_pfc*,int ,int) ;
 int sh_pfc_get_pin_index (struct sh_pfc*,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int sh_pfc_gpio_set_direction(struct pinctrl_dev *pctldev,
         struct pinctrl_gpio_range *range,
         unsigned offset, bool input)
{
 struct sh_pfc_pinctrl *pmx = pinctrl_dev_get_drvdata(pctldev);
 struct sh_pfc *pfc = pmx->pfc;
 int new_type = input ? PINMUX_TYPE_INPUT : PINMUX_TYPE_OUTPUT;
 int idx = sh_pfc_get_pin_index(pfc, offset);
 const struct sh_pfc_pin *pin = &pfc->info->pins[idx];
 unsigned long flags;
 unsigned int dir;
 int ret;




 if (pin->configs) {
  dir = input ? SH_PFC_PIN_CFG_INPUT : SH_PFC_PIN_CFG_OUTPUT;
  if (!(pin->configs & dir))
   return -EINVAL;
 }

 spin_lock_irqsave(&pfc->lock, flags);

 ret = sh_pfc_config_mux(pfc, pin->enum_id, new_type);
 if (ret < 0)
  goto done;

done:
 spin_unlock_irqrestore(&pfc->lock, flags);
 return ret;
}
