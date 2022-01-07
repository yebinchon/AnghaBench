
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_gpio_chip {int rwimsc; int fwimsc; scalar_t__ addr; int (* set_ioforce ) (int) ;} ;


 int BIT (unsigned int) ;
 scalar_t__ NMK_GPIO_FWIMSC ;
 scalar_t__ NMK_GPIO_RWIMSC ;
 int __nmk_gpio_set_mode (struct nmk_gpio_chip*,unsigned int,int) ;
 int stub1 (int) ;
 int stub2 (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void __nmk_gpio_set_mode_safe(struct nmk_gpio_chip *nmk_chip,
         unsigned offset, int gpio_mode,
         bool glitch)
{
 u32 rwimsc = nmk_chip->rwimsc;
 u32 fwimsc = nmk_chip->fwimsc;

 if (glitch && nmk_chip->set_ioforce) {
  u32 bit = BIT(offset);


  writel(rwimsc & ~bit, nmk_chip->addr + NMK_GPIO_RWIMSC);
  writel(fwimsc & ~bit, nmk_chip->addr + NMK_GPIO_FWIMSC);

  nmk_chip->set_ioforce(1);
 }

 __nmk_gpio_set_mode(nmk_chip, offset, gpio_mode);

 if (glitch && nmk_chip->set_ioforce) {
  nmk_chip->set_ioforce(0);

  writel(rwimsc, nmk_chip->addr + NMK_GPIO_RWIMSC);
  writel(fwimsc, nmk_chip->addr + NMK_GPIO_FWIMSC);
 }
}
