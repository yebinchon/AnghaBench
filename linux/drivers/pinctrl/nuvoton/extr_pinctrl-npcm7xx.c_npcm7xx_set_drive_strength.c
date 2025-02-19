
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct npcm7xx_pinctrl {struct npcm7xx_gpio* gpio_bank; } ;
struct TYPE_5__ {unsigned int ngpio; int parent; } ;
struct npcm7xx_gpio {scalar_t__ base; TYPE_2__ gc; } ;
struct TYPE_4__ {int flag; } ;


 int BIT (unsigned int) ;
 int DRIVE_STRENGTH_MASK ;
 int DSHI (int) ;
 int DSLO (int) ;
 int ENOTSUPP ;
 unsigned int NPCM7XX_GPIO_PER_BANK ;
 scalar_t__ NPCM7XX_GP_N_ODSC ;
 int dev_dbg (int ,char*,unsigned int,int) ;
 int npcm_gpio_clr (TYPE_2__*,scalar_t__,int) ;
 int npcm_gpio_set (TYPE_2__*,scalar_t__,int) ;
 TYPE_1__* pincfg ;

__attribute__((used)) static int npcm7xx_set_drive_strength(struct npcm7xx_pinctrl *npcm,
          unsigned int pin, int nval)
{
 int v;
 struct npcm7xx_gpio *bank =
  &npcm->gpio_bank[pin / NPCM7XX_GPIO_PER_BANK];
 int gpio = BIT(pin % bank->gc.ngpio);

 v = (pincfg[pin].flag & DRIVE_STRENGTH_MASK);
 if (!nval || !v)
  return -ENOTSUPP;
 if (DSLO(v) == nval) {
  dev_dbg(bank->gc.parent,
   "setting pin %d to low strength [%d]\n", pin, nval);
  npcm_gpio_clr(&bank->gc, bank->base + NPCM7XX_GP_N_ODSC, gpio);
  return 0;
 } else if (DSHI(v) == nval) {
  dev_dbg(bank->gc.parent,
   "setting pin %d to high strength [%d]\n", pin, nval);
  npcm_gpio_set(&bank->gc, bank->base + NPCM7XX_GP_N_ODSC, gpio);
  return 0;
 }

 return -ENOTSUPP;
}
