
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regmap {int dummy; } ;
struct TYPE_5__ {unsigned int ngpio; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_2__ gc; } ;
struct TYPE_4__ {int flag; } ;


 int BIT (unsigned int) ;
 int EINVAL ;
 int NPCM7XX_GCR_SRCNT ;
 scalar_t__ NPCM7XX_GP_N_OSRC ;
 int SLEW ;
 int SLEWLPC ;
 int SRCNT_ESPI ;
 int npcm_gpio_clr (TYPE_2__*,scalar_t__,int) ;
 int npcm_gpio_set (TYPE_2__*,scalar_t__,int) ;
 TYPE_1__* pincfg ;
 int regmap_update_bits (struct regmap*,int ,int ,int ) ;

__attribute__((used)) static int npcm7xx_set_slew_rate(struct npcm7xx_gpio *bank,
     struct regmap *gcr_regmap, unsigned int pin,
     int arg)
{
 int gpio = BIT(pin % bank->gc.ngpio);

 if (pincfg[pin].flag & SLEW) {
  switch (arg) {
  case 0:
   npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_OSRC,
          gpio);
   return 0;
  case 1:
   npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_OSRC,
          gpio);
   return 0;
  default:
   return -EINVAL;
  }
 }

 if (pincfg[pin].flag & SLEWLPC) {
  switch (arg) {
  case 0:
   regmap_update_bits(gcr_regmap, NPCM7XX_GCR_SRCNT,
        SRCNT_ESPI, 0);
   return 0;
  case 1:
   regmap_update_bits(gcr_regmap, NPCM7XX_GCR_SRCNT,
        SRCNT_ESPI, SRCNT_ESPI);
   return 0;
  default:
   return -EINVAL;
  }
 }

 return -EINVAL;
}
