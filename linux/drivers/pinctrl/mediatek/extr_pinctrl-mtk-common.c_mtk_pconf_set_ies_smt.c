
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_pinctrl {TYPE_1__* devdata; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int (* spec_ies_smt_set ) (int ,unsigned int,int ,int,int) ;unsigned int ies_offset; unsigned int smt_offset; int port_align; } ;


 unsigned int BIT (unsigned int) ;
 unsigned int CLR_ADDR (scalar_t__,struct mtk_pinctrl*) ;
 int EINVAL ;
 unsigned int MTK_PINCTRL_NOT_SUPPORT ;
 int PIN_CONFIG_INPUT_ENABLE ;
 int PIN_CONFIG_INPUT_SCHMITT_ENABLE ;
 unsigned int SET_ADDR (scalar_t__,struct mtk_pinctrl*) ;
 scalar_t__ mtk_get_port (struct mtk_pinctrl*,unsigned int) ;
 int mtk_get_regmap (struct mtk_pinctrl*,unsigned int) ;
 int regmap_write (int ,unsigned int,unsigned int) ;
 int stub1 (int ,unsigned int,int ,int,int) ;

__attribute__((used)) static int mtk_pconf_set_ies_smt(struct mtk_pinctrl *pctl, unsigned pin,
  int value, enum pin_config_param arg)
{
 unsigned int reg_addr, offset;
 unsigned int bit;





 if (!pctl->devdata->spec_ies_smt_set &&
  pctl->devdata->ies_offset == MTK_PINCTRL_NOT_SUPPORT &&
   arg == PIN_CONFIG_INPUT_ENABLE)
  return -EINVAL;

 if (!pctl->devdata->spec_ies_smt_set &&
  pctl->devdata->smt_offset == MTK_PINCTRL_NOT_SUPPORT &&
   arg == PIN_CONFIG_INPUT_SCHMITT_ENABLE)
  return -EINVAL;





 if (pctl->devdata->spec_ies_smt_set) {
  return pctl->devdata->spec_ies_smt_set(mtk_get_regmap(pctl, pin),
   pin, pctl->devdata->port_align, value, arg);
 }

 bit = BIT(pin & 0xf);

 if (arg == PIN_CONFIG_INPUT_ENABLE)
  offset = pctl->devdata->ies_offset;
 else
  offset = pctl->devdata->smt_offset;

 if (value)
  reg_addr = SET_ADDR(mtk_get_port(pctl, pin) + offset, pctl);
 else
  reg_addr = CLR_ADDR(mtk_get_port(pctl, pin) + offset, pctl);

 regmap_write(mtk_get_regmap(pctl, pin), reg_addr, bit);
 return 0;
}
