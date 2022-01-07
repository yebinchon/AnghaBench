
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nmk_gpio_chip {scalar_t__ sleepmode; } ;


 int NMK_GPIO_SLPM_WAKEUP_ENABLE ;
 int WAKE ;
 int __nmk_gpio_irq_modify (struct nmk_gpio_chip*,int,int ,int) ;
 int __nmk_gpio_set_slpm (struct nmk_gpio_chip*,int,int ) ;

__attribute__((used)) static void __nmk_gpio_set_wake(struct nmk_gpio_chip *nmk_chip,
    int offset, bool on)
{





 if (nmk_chip->sleepmode && on) {
  __nmk_gpio_set_slpm(nmk_chip, offset,
        NMK_GPIO_SLPM_WAKEUP_ENABLE);
 }

 __nmk_gpio_irq_modify(nmk_chip, offset, WAKE, on);
}
