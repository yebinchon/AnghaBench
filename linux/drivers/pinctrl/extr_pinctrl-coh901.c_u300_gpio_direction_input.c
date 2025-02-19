
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct u300_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;


 unsigned int U300_GPIO_PXPCR_PIN_MODE_MASK ;
 int U300_PIN_REG (unsigned int,int ) ;
 struct u300_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pcr ;
 unsigned int readl (int ) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int u300_gpio_direction_input(struct gpio_chip *chip, unsigned offset)
{
 struct u300_gpio *gpio = gpiochip_get_data(chip);
 unsigned long flags;
 u32 val;

 local_irq_save(flags);
 val = readl(U300_PIN_REG(offset, pcr));

 val &= ~(U300_GPIO_PXPCR_PIN_MODE_MASK << ((offset & 0x07) << 1));
 writel(val, U300_PIN_REG(offset, pcr));
 local_irq_restore(flags);
 return 0;
}
