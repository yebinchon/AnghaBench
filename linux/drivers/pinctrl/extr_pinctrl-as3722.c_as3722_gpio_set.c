
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {int dummy; } ;
struct as3722_pctrl_info {int dev; struct as3722* as3722; } ;
struct as3722 {int dummy; } ;


 int AS3722_GPIO_INV ;
 int AS3722_GPIO_SIGNAL_OUT_REG ;
 int AS3722_GPIOn_CONTROL_REG (unsigned int) ;
 int AS3722_GPIOn_SIGNAL (unsigned int) ;
 int as3722_read (struct as3722*,int ,int*) ;
 int as3722_update_bits (struct as3722*,int ,int,int) ;
 int dev_err (int ,char*,int,...) ;
 struct as3722_pctrl_info* gpiochip_get_data (struct gpio_chip*) ;

__attribute__((used)) static void as3722_gpio_set(struct gpio_chip *chip, unsigned offset,
  int value)
{
 struct as3722_pctrl_info *as_pci = gpiochip_get_data(chip);
 struct as3722 *as3722 = as_pci->as3722;
 int en_invert;
 u32 val;
 int ret;

 ret = as3722_read(as3722, AS3722_GPIOn_CONTROL_REG(offset), &val);
 if (ret < 0) {
  dev_err(as_pci->dev,
   "GPIO_CONTROL%d_REG read failed: %d\n", offset, ret);
  return;
 }
 en_invert = !!(val & AS3722_GPIO_INV);

 if (value)
  val = (en_invert) ? 0 : AS3722_GPIOn_SIGNAL(offset);
 else
  val = (en_invert) ? AS3722_GPIOn_SIGNAL(offset) : 0;

 ret = as3722_update_bits(as3722, AS3722_GPIO_SIGNAL_OUT_REG,
   AS3722_GPIOn_SIGNAL(offset), val);
 if (ret < 0)
  dev_err(as_pci->dev,
   "GPIO_SIGNAL_OUT_REG update failed: %d\n", ret);
}
