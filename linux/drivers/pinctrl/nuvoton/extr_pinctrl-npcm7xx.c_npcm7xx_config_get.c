
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u32 ;
struct pinctrl_dev {int dummy; } ;
struct npcm7xx_pinctrl {int gcr_regmap; struct npcm7xx_gpio* gpio_bank; } ;
struct TYPE_2__ {unsigned int ngpio; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 unsigned long BIT (int) ;
 int EINVAL ;
 int ENOTSUPP ;
 unsigned int NPCM7XX_GPIO_PER_BANK ;
 scalar_t__ NPCM7XX_GP_N_DBNC ;
 scalar_t__ NPCM7XX_GP_N_IEM ;
 scalar_t__ NPCM7XX_GP_N_OE ;
 scalar_t__ NPCM7XX_GP_N_OTYP ;
 scalar_t__ NPCM7XX_GP_N_PD ;
 scalar_t__ NPCM7XX_GP_N_PU ;
 unsigned long ioread32 (scalar_t__) ;
 int npcm7xx_get_drive_strength (struct pinctrl_dev*,unsigned int) ;
 int npcm7xx_get_slew_rate (struct npcm7xx_gpio*,int ,unsigned int) ;
 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct npcm7xx_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int npcm7xx_config_get(struct pinctrl_dev *pctldev, unsigned int pin,
         unsigned long *config)
{
 enum pin_config_param param = pinconf_to_config_param(*config);
 struct npcm7xx_pinctrl *npcm = pinctrl_dev_get_drvdata(pctldev);
 struct npcm7xx_gpio *bank =
  &npcm->gpio_bank[pin / NPCM7XX_GPIO_PER_BANK];
 int gpio = (pin % bank->gc.ngpio);
 unsigned long pinmask = BIT(gpio);
 u32 ie, oe, pu, pd;
 int rc = 0;

 switch (param) {
 case 137:
 case 135:
 case 136:
  pu = ioread32(bank->base + NPCM7XX_GP_N_PU) & pinmask;
  pd = ioread32(bank->base + NPCM7XX_GP_N_PD) & pinmask;
  if (param == 137)
   rc = (!pu && !pd);
  else if (param == 135)
   rc = (pu && !pd);
  else if (param == 136)
   rc = (!pu && pd);
  break;
 case 129:
 case 130:
  ie = ioread32(bank->base + NPCM7XX_GP_N_IEM) & pinmask;
  oe = ioread32(bank->base + NPCM7XX_GP_N_OE) & pinmask;
  if (param == 130)
   rc = (ie && !oe);
  else if (param == 129)
   rc = (!ie && oe);
  break;
 case 133:
  rc = !(ioread32(bank->base + NPCM7XX_GP_N_OTYP) & pinmask);
  break;
 case 134:
  rc = ioread32(bank->base + NPCM7XX_GP_N_OTYP) & pinmask;
  break;
 case 131:
  rc = ioread32(bank->base + NPCM7XX_GP_N_DBNC) & pinmask;
  break;
 case 132:
  rc = npcm7xx_get_drive_strength(pctldev, pin);
  if (rc)
   *config = pinconf_to_config_packed(param, rc);
  break;
 case 128:
  rc = npcm7xx_get_slew_rate(bank, npcm->gcr_regmap, pin);
  if (rc >= 0)
   *config = pinconf_to_config_packed(param, rc);
  break;
 default:
  return -ENOTSUPP;
 }

 if (!rc)
  return -EINVAL;

 return 0;
}
