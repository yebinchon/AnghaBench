
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct dc_pinmap {scalar_t__ regs; } ;


 int BIT (int) ;
 int GP_INPUT (unsigned int) ;
 unsigned int PINS_PER_COLLECTION ;
 struct dc_pinmap* gpiochip_get_data (struct gpio_chip*) ;
 int readb_relaxed (scalar_t__) ;

__attribute__((used)) static int dc_gpio_get(struct gpio_chip *chip, unsigned gpio)
{
 struct dc_pinmap *pmap = gpiochip_get_data(chip);
 int reg_off = GP_INPUT(gpio/PINS_PER_COLLECTION);
 int bit_off = gpio % PINS_PER_COLLECTION;
 u8 input;

 input = readb_relaxed(pmap->regs + reg_off);

 return !!(input & BIT(bit_off));
}
