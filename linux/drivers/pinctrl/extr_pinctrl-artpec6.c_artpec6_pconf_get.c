
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct artpec6_pmx {unsigned int num_pins; scalar_t__ base; TYPE_1__* pins; int dev; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;
struct TYPE_2__ {int name; } ;


 unsigned int ARTPEC6_PINMUX_DRV_MASK ;
 unsigned int ARTPEC6_PINMUX_DRV_SHIFT ;
 unsigned int ARTPEC6_PINMUX_UDC0_MASK ;
 unsigned int ARTPEC6_PINMUX_UDC1_MASK ;
 int EINVAL ;
 int ENOTSUPP ;




 unsigned int artpec6_pconf_drive_field_to_mA (unsigned int) ;
 scalar_t__ artpec6_pmx_reg_offset (unsigned int) ;
 int dev_dbg (int ,char*,int ) ;
 unsigned long pinconf_to_config_packed (int,unsigned int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct artpec6_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static int artpec6_pconf_get(struct pinctrl_dev *pctldev, unsigned int pin,
        unsigned long *config)
{
 struct artpec6_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 unsigned int regval;


 if (pin >= pmx->num_pins) {
  dev_dbg(pmx->dev, "pinconf is not supported for pin %s\n",
   pmx->pins[pin].name);
  return -ENOTSUPP;
 }

 dev_dbg(pmx->dev, "getting configuration for pin %s\n",
  pmx->pins[pin].name);


 regval = readl(pmx->base + artpec6_pmx_reg_offset(pin));


 switch (param) {
 case 131:
  if (!(regval & ARTPEC6_PINMUX_UDC1_MASK))
   return -EINVAL;
  break;

 case 129:
 case 130:
  if (regval & ARTPEC6_PINMUX_UDC1_MASK)
   return -EINVAL;

  regval = regval & ARTPEC6_PINMUX_UDC0_MASK;
  if ((param == 129 && !regval) ||
      (param == 130 && regval))
   return -EINVAL;
  break;
 case 128:
  regval = (regval & ARTPEC6_PINMUX_DRV_MASK)
   >> ARTPEC6_PINMUX_DRV_SHIFT;
  regval = artpec6_pconf_drive_field_to_mA(regval);
  *config = pinconf_to_config_packed(param, regval);
  break;
 default:
  return -ENOTSUPP;
 }

 return 0;
}
