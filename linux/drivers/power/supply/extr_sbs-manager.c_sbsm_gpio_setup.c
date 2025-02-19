
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int can_sleep; int base; int owner; struct device* parent; int label; int ngpio; int direction_input; int get; } ;
struct sbsm_data {int last_state; int last_state_cont; struct i2c_client* client; struct gpio_chip chip; } ;
struct device {int dummy; } ;
struct i2c_client {int name; struct device dev; } ;


 int SBSM_CMD_BATSYSSTATE ;
 int SBSM_CMD_BATSYSSTATECONT ;
 int SBSM_MAX_BATS ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,int) ;
 int device_property_present (struct device*,char*) ;
 int devm_gpiochip_add_data (struct device*,struct gpio_chip*,struct sbsm_data*) ;
 int sbsm_gpio_direction_input ;
 int sbsm_gpio_get_value ;
 int sbsm_read_word (struct i2c_client*,int ) ;

__attribute__((used)) static int sbsm_gpio_setup(struct sbsm_data *data)
{
 struct gpio_chip *gc = &data->chip;
 struct i2c_client *client = data->client;
 struct device *dev = &client->dev;
 int ret;

 if (!device_property_present(dev, "gpio-controller"))
  return 0;

 ret = sbsm_read_word(client, SBSM_CMD_BATSYSSTATE);
 if (ret < 0)
  return ret;
 data->last_state = ret;

 ret = sbsm_read_word(client, SBSM_CMD_BATSYSSTATECONT);
 if (ret < 0)
  return ret;
 data->last_state_cont = ret;

 gc->get = sbsm_gpio_get_value;
 gc->direction_input = sbsm_gpio_direction_input;
 gc->can_sleep = 1;
 gc->base = -1;
 gc->ngpio = SBSM_MAX_BATS;
 gc->label = client->name;
 gc->parent = dev;
 gc->owner = THIS_MODULE;

 ret = devm_gpiochip_add_data(dev, gc, data);
 if (ret) {
  dev_err(dev, "devm_gpiochip_add_data failed: %d\n", ret);
  return ret;
 }

 return ret;
}
