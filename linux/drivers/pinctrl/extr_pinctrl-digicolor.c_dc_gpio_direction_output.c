
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct dc_pinmap {int lock; scalar_t__ regs; } ;


 int BIT (int) ;
 int GP_DRIVE0 (unsigned int) ;
 unsigned int PINS_PER_COLLECTION ;
 int dc_gpio_set (struct gpio_chip*,unsigned int,int) ;
 struct dc_pinmap* gpiochip_get_data (struct gpio_chip*) ;
 int readb_relaxed (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int dc_gpio_direction_output(struct gpio_chip *chip, unsigned gpio,
        int value)
{
 struct dc_pinmap *pmap = gpiochip_get_data(chip);
 int reg_off = GP_DRIVE0(gpio/PINS_PER_COLLECTION);
 int bit_off = gpio % PINS_PER_COLLECTION;
 u8 drive;
 unsigned long flags;

 dc_gpio_set(chip, gpio, value);

 spin_lock_irqsave(&pmap->lock, flags);
 drive = readb_relaxed(pmap->regs + reg_off);
 drive |= BIT(bit_off);
 writeb_relaxed(drive, pmap->regs + reg_off);
 spin_unlock_irqrestore(&pmap->lock, flags);

 return 0;
}
