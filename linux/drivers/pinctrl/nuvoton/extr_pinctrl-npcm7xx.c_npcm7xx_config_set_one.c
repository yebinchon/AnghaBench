
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct npcm7xx_pinctrl {int gcr_regmap; struct npcm7xx_gpio* gpio_bank; } ;
struct TYPE_5__ {unsigned int ngpio; int parent; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; int (* direction_output ) (TYPE_1__*,unsigned int,int ) ;int (* direction_input ) (TYPE_1__*,unsigned int) ;} ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int BIT (unsigned int) ;
 int ENOTSUPP ;
 unsigned int NPCM7XX_GPIO_PER_BANK ;
 scalar_t__ NPCM7XX_GP_N_DBNC ;
 scalar_t__ NPCM7XX_GP_N_OEC ;
 scalar_t__ NPCM7XX_GP_N_OES ;
 scalar_t__ NPCM7XX_GP_N_OTYP ;
 scalar_t__ NPCM7XX_GP_N_PD ;
 scalar_t__ NPCM7XX_GP_N_PU ;
 int dev_dbg (int ,char*,int,unsigned int) ;
 int iowrite32 (int,scalar_t__) ;
 int npcm7xx_set_drive_strength (struct npcm7xx_pinctrl*,unsigned int,int ) ;
 int npcm7xx_set_slew_rate (struct npcm7xx_gpio*,int ,unsigned int,int ) ;
 int npcm_gpio_clr (TYPE_1__*,scalar_t__,int) ;
 int npcm_gpio_set (TYPE_1__*,scalar_t__,int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 int stub1 (TYPE_1__*,unsigned int) ;
 int stub2 (TYPE_1__*,unsigned int,int ) ;

__attribute__((used)) static int npcm7xx_config_set_one(struct npcm7xx_pinctrl *npcm,
      unsigned int pin, unsigned long config)
{
 enum pin_config_param param = pinconf_to_config_param(config);
 u16 arg = pinconf_to_config_argument(config);
 struct npcm7xx_gpio *bank =
  &npcm->gpio_bank[pin / NPCM7XX_GPIO_PER_BANK];
 int gpio = BIT(pin % bank->gc.ngpio);

 dev_dbg(bank->gc.parent, "param=%d %d[GPIO]\n", param, pin);
 switch (param) {
 case 137:
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_PU, gpio);
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_PD, gpio);
  break;
 case 136:
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_PU, gpio);
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_PD, gpio);
  break;
 case 135:
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_PD, gpio);
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_PU, gpio);
  break;
 case 130:
  iowrite32(gpio, bank->base + NPCM7XX_GP_N_OEC);
  bank->direction_input(&bank->gc, pin % bank->gc.ngpio);
  break;
 case 129:
  iowrite32(gpio, bank->base + NPCM7XX_GP_N_OES);
  bank->direction_output(&bank->gc, pin % bank->gc.ngpio, arg);
  break;
 case 133:
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_OTYP, gpio);
  break;
 case 134:
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_OTYP, gpio);
  break;
 case 131:
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_DBNC, gpio);
  break;
 case 128:
  return npcm7xx_set_slew_rate(bank, npcm->gcr_regmap, pin, arg);
 case 132:
  return npcm7xx_set_drive_strength(npcm, pin, arg);
 default:
  return -ENOTSUPP;
 }

 return 0;
}
