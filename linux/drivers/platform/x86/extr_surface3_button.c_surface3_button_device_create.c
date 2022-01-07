
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct surface3_button_info {int autorepeat; int wakeup; scalar_t__ name; int active_low; int event_code; int event_type; int acpi_index; } ;
struct platform_device {int dummy; } ;
struct i2c_client {int dev; } ;
struct gpio_keys_platform_data {int nbuttons; int rep; struct gpio_keys_button* buttons; } ;
struct gpio_keys_button {int gpio; int wakeup; scalar_t__ desc; int active_low; int code; int type; } ;


 int ENODEV ;
 int ENOMEM ;
 struct platform_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MAX_NBUTTONS ;
 int PLATFORM_DEVID_AUTO ;
 int devm_kfree (int *,struct gpio_keys_platform_data*) ;
 struct gpio_keys_platform_data* devm_kzalloc (int *,int,int ) ;
 int gpio_is_valid (int) ;
 int platform_device_add (struct platform_device*) ;
 int platform_device_add_data (struct platform_device*,struct gpio_keys_platform_data*,int) ;
 struct platform_device* platform_device_alloc (char*,int ) ;
 int platform_device_put (struct platform_device*) ;
 int surface3_button_lookup_gpio (int *,int ) ;

__attribute__((used)) static struct platform_device *
surface3_button_device_create(struct i2c_client *client,
         const struct surface3_button_info *button_info,
         bool autorepeat)
{
 const struct surface3_button_info *info;
 struct platform_device *pd;
 struct gpio_keys_button *gpio_keys;
 struct gpio_keys_platform_data *gpio_keys_pdata;
 int n_buttons = 0;
 int gpio;
 int error;

 gpio_keys_pdata = devm_kzalloc(&client->dev,
           sizeof(*gpio_keys_pdata) +
           sizeof(*gpio_keys) * MAX_NBUTTONS,
           GFP_KERNEL);
 if (!gpio_keys_pdata)
  return ERR_PTR(-ENOMEM);

 gpio_keys = (void *)(gpio_keys_pdata + 1);

 for (info = button_info; info->name; info++) {
  if (info->autorepeat != autorepeat)
   continue;

  gpio = surface3_button_lookup_gpio(&client->dev,
         info->acpi_index);
  if (!gpio_is_valid(gpio))
   continue;

  gpio_keys[n_buttons].type = info->event_type;
  gpio_keys[n_buttons].code = info->event_code;
  gpio_keys[n_buttons].gpio = gpio;
  gpio_keys[n_buttons].active_low = info->active_low;
  gpio_keys[n_buttons].desc = info->name;
  gpio_keys[n_buttons].wakeup = info->wakeup;
  n_buttons++;
 }

 if (n_buttons == 0) {
  error = -ENODEV;
  goto err_free_mem;
 }

 gpio_keys_pdata->buttons = gpio_keys;
 gpio_keys_pdata->nbuttons = n_buttons;
 gpio_keys_pdata->rep = autorepeat;

 pd = platform_device_alloc("gpio-keys", PLATFORM_DEVID_AUTO);
 if (!pd) {
  error = -ENOMEM;
  goto err_free_mem;
 }

 error = platform_device_add_data(pd, gpio_keys_pdata,
      sizeof(*gpio_keys_pdata));
 if (error)
  goto err_free_pdev;

 error = platform_device_add(pd);
 if (error)
  goto err_free_pdev;

 return pd;

err_free_pdev:
 platform_device_put(pd);
err_free_mem:
 devm_kfree(&client->dev, gpio_keys_pdata);
 return ERR_PTR(error);
}
