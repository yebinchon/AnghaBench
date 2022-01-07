
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbsm_data {int client; } ;
struct gpio_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int SBSM_CMD_BATSYSSTATE ;
 struct sbsm_data* gpiochip_get_data (struct gpio_chip*) ;
 int sbsm_read_word (int ,int ) ;

__attribute__((used)) static int sbsm_gpio_get_value(struct gpio_chip *gc, unsigned int off)
{
 struct sbsm_data *data = gpiochip_get_data(gc);
 int ret;

 ret = sbsm_read_word(data->client, SBSM_CMD_BATSYSSTATE);
 if (ret < 0)
  return ret;

 return ret & BIT(off);
}
