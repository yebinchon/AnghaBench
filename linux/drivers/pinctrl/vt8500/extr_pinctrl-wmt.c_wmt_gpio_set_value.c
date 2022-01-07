
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct wmt_pinctrl_data {int dev; TYPE_1__* banks; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {size_t reg_data_out; } ;


 int BIT (size_t) ;
 size_t NO_REG ;
 size_t WMT_BANK_FROM_PIN (unsigned int) ;
 size_t WMT_BIT_FROM_PIN (unsigned int) ;
 int dev_err (int ,char*) ;
 struct wmt_pinctrl_data* gpiochip_get_data (struct gpio_chip*) ;
 int wmt_clearbits (struct wmt_pinctrl_data*,size_t,int ) ;
 int wmt_setbits (struct wmt_pinctrl_data*,size_t,int ) ;

__attribute__((used)) static void wmt_gpio_set_value(struct gpio_chip *chip, unsigned offset,
          int val)
{
 struct wmt_pinctrl_data *data = gpiochip_get_data(chip);
 u32 bank = WMT_BANK_FROM_PIN(offset);
 u32 bit = WMT_BIT_FROM_PIN(offset);
 u32 reg_data_out = data->banks[bank].reg_data_out;

 if (reg_data_out == NO_REG) {
  dev_err(data->dev, "no data out register defined\n");
  return;
 }

 if (val)
  wmt_setbits(data, reg_data_out, BIT(bit));
 else
  wmt_clearbits(data, reg_data_out, BIT(bit));
}
