
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct wmt_pinctrl_data {size_t base; int dev; TYPE_1__* banks; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {size_t reg_data_in; } ;


 int BIT (size_t) ;
 int EINVAL ;
 size_t NO_REG ;
 size_t WMT_BANK_FROM_PIN (unsigned int) ;
 size_t WMT_BIT_FROM_PIN (unsigned int) ;
 int dev_err (int ,char*) ;
 struct wmt_pinctrl_data* gpiochip_get_data (struct gpio_chip*) ;
 int readl_relaxed (size_t) ;

__attribute__((used)) static int wmt_gpio_get_value(struct gpio_chip *chip, unsigned offset)
{
 struct wmt_pinctrl_data *data = gpiochip_get_data(chip);
 u32 bank = WMT_BANK_FROM_PIN(offset);
 u32 bit = WMT_BIT_FROM_PIN(offset);
 u32 reg_data_in = data->banks[bank].reg_data_in;

 if (reg_data_in == NO_REG) {
  dev_err(data->dev, "no data in register defined\n");
  return -EINVAL;
 }

 return !!(readl_relaxed(data->base + reg_data_in) & BIT(bit));
}
