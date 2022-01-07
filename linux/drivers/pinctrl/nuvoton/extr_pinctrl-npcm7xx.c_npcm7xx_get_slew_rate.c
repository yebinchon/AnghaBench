
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct regmap {int dummy; } ;
struct TYPE_3__ {unsigned int ngpio; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_1__ gc; } ;
struct TYPE_4__ {int flag; } ;


 unsigned long BIT (int) ;
 int EINVAL ;
 int NPCM7XX_GCR_SRCNT ;
 scalar_t__ NPCM7XX_GP_N_OSRC ;
 int SLEW ;
 int SLEWLPC ;
 int SRCNT_ESPI ;
 unsigned long ioread32 (scalar_t__) ;
 TYPE_2__* pincfg ;
 int regmap_read (struct regmap*,int ,int*) ;

__attribute__((used)) static int npcm7xx_get_slew_rate(struct npcm7xx_gpio *bank,
     struct regmap *gcr_regmap, unsigned int pin)
{
 u32 val;
 int gpio = (pin % bank->gc.ngpio);
 unsigned long pinmask = BIT(gpio);

 if (pincfg[pin].flag & SLEW)
  return ioread32(bank->base + NPCM7XX_GP_N_OSRC)
  & pinmask;

 if (pincfg[pin].flag & SLEWLPC) {
  regmap_read(gcr_regmap, NPCM7XX_GCR_SRCNT, &val);
  return !!(val & SRCNT_ESPI);
 }

 return -EINVAL;
}
