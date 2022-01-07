
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bcm2835_pinctrl {int dev; } ;
typedef enum bcm2835_fsel { ____Placeholder_bcm2835_fsel } bcm2835_fsel ;


 int BCM2835_FSEL_MASK ;
 int FSEL_REG (unsigned int) ;
 int FSEL_SHIFT (unsigned int) ;
 int * bcm2835_functions ;
 int bcm2835_gpio_rd (struct bcm2835_pinctrl*,int ) ;
 int dev_dbg (int ,char*,int,unsigned int,int ) ;

__attribute__((used)) static inline enum bcm2835_fsel bcm2835_pinctrl_fsel_get(
  struct bcm2835_pinctrl *pc, unsigned pin)
{
 u32 val = bcm2835_gpio_rd(pc, FSEL_REG(pin));
 enum bcm2835_fsel status = (val >> FSEL_SHIFT(pin)) & BCM2835_FSEL_MASK;

 dev_dbg(pc->dev, "get %08x (%u => %s)\n", val, pin,
   bcm2835_functions[status]);

 return status;
}
