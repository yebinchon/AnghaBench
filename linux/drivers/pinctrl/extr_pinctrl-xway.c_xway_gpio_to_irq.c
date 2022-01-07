
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ltq_pinmux_info {int num_exin; unsigned int* exin; } ;
struct gpio_chip {int parent; } ;


 struct ltq_pinmux_info* dev_get_drvdata (int ) ;
 int ltq_eiu_get_irq (int) ;

__attribute__((used)) static int xway_gpio_to_irq(struct gpio_chip *chip, unsigned offset)
{
 struct ltq_pinmux_info *info = dev_get_drvdata(chip->parent);
 int i;

 for (i = 0; i < info->num_exin; i++)
  if (info->exin[i] == offset)
   return ltq_eiu_get_irq(i);

 return -1;
}
