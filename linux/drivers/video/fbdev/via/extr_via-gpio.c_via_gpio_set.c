
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct viafb_gpio_cfg {TYPE_1__* vdev; struct viafb_gpio** active_gpios; } ;
struct viafb_gpio {int vg_mask_shift; int vg_port_index; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int reg_lock; } ;


 int VIASR ;
 struct viafb_gpio_cfg* gpiochip_get_data (struct gpio_chip*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int via_read_reg (int ,int ) ;
 int via_write_reg (int ,int ,int) ;

__attribute__((used)) static void via_gpio_set(struct gpio_chip *chip, unsigned int nr,
    int value)
{
 struct viafb_gpio_cfg *cfg = gpiochip_get_data(chip);
 u8 reg;
 struct viafb_gpio *gpio;
 unsigned long flags;

 spin_lock_irqsave(&cfg->vdev->reg_lock, flags);
 gpio = cfg->active_gpios[nr];
 reg = via_read_reg(VIASR, gpio->vg_port_index);
 reg |= 0x40 << gpio->vg_mask_shift;
 if (value)
  reg |= 0x10 << gpio->vg_mask_shift;
 else
  reg &= ~(0x10 << gpio->vg_mask_shift);
 via_write_reg(VIASR, gpio->vg_port_index, reg);
 spin_unlock_irqrestore(&cfg->vdev->reg_lock, flags);
}
