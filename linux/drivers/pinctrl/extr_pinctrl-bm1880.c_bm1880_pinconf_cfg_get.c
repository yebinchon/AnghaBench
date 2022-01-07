
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct bm1880_pinctrl {TYPE_1__* pinconf; scalar_t__ base; } ;
struct TYPE_2__ {int drv_bits; } ;


 int BIT (int) ;
 int BM1880_PINCONF_DRV (unsigned int) ;
 int BM1880_PINCONF_PULLCTRL (unsigned int) ;
 int BM1880_PINCONF_PULLDOWN (unsigned int) ;
 int BM1880_PINCONF_PULLUP (unsigned int) ;
 int BM1880_PINCONF_SCHMITT (unsigned int) ;
 int BM1880_PINCONF_SLEW (unsigned int) ;
 scalar_t__ BM1880_REG_MUX ;
 int ENOTSUPP ;






 int bm1880_pinconf_drv_get (int ,int) ;
 unsigned long pinconf_to_config_packed (unsigned int,unsigned int) ;
 unsigned int pinconf_to_config_param (unsigned long) ;
 struct bm1880_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static int bm1880_pinconf_cfg_get(struct pinctrl_dev *pctldev,
      unsigned int pin,
      unsigned long *config)
{
 struct bm1880_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);
 unsigned int param = pinconf_to_config_param(*config);
 unsigned int arg = 0;
 u32 regval, offset, bit_offset;
 int ret;

 offset = (pin >> 1) << 2;
 regval = readl_relaxed(pctrl->base + BM1880_REG_MUX + offset);

 switch (param) {
 case 131:
  bit_offset = BM1880_PINCONF_PULLUP(pin);
  arg = !!(regval & BIT(bit_offset));
  break;
 case 132:
  bit_offset = BM1880_PINCONF_PULLDOWN(pin);
  arg = !!(regval & BIT(bit_offset));
  break;
 case 133:
  bit_offset = BM1880_PINCONF_PULLCTRL(pin);
  arg = !!(regval & BIT(bit_offset));
  break;
 case 129:
  bit_offset = BM1880_PINCONF_SCHMITT(pin);
  arg = !!(regval & BIT(bit_offset));
  break;
 case 128:
  bit_offset = BM1880_PINCONF_SLEW(pin);
  arg = !!(regval & BIT(bit_offset));
  break;
 case 130:
  bit_offset = BM1880_PINCONF_DRV(pin);
  ret = bm1880_pinconf_drv_get(pctrl->pinconf[pin].drv_bits,
          !!(regval & BIT(bit_offset)));
  if (ret < 0)
   return ret;

  arg = ret;
  break;
 default:
  return -ENOTSUPP;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
