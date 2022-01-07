
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mctrl_gpios {int * gpio; } ;
struct device {int dummy; } ;
typedef enum mctrl_gpio_idx { ____Placeholder_mctrl_gpio_idx } mctrl_gpio_idx ;
struct TYPE_2__ {int flags; int name; } ;


 int ENOMEM ;
 struct mctrl_gpios* ERR_CAST (int ) ;
 struct mctrl_gpios* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int UART_GPIO_MAX ;
 int device_property_present (struct device*,char*) ;
 int devm_gpiod_get_index_optional (struct device*,int ,unsigned int,int ) ;
 struct mctrl_gpios* devm_kzalloc (struct device*,int,int ) ;
 char* kasprintf (int ,char*,int ) ;
 int kfree (char*) ;
 TYPE_1__* mctrl_gpios_desc ;

struct mctrl_gpios *mctrl_gpio_init_noauto(struct device *dev, unsigned int idx)
{
 struct mctrl_gpios *gpios;
 enum mctrl_gpio_idx i;

 gpios = devm_kzalloc(dev, sizeof(*gpios), GFP_KERNEL);
 if (!gpios)
  return ERR_PTR(-ENOMEM);

 for (i = 0; i < UART_GPIO_MAX; i++) {
  char *gpio_str;
  bool present;


  gpio_str = kasprintf(GFP_KERNEL, "%s-gpios",
         mctrl_gpios_desc[i].name);
  if (!gpio_str)
   continue;

  present = device_property_present(dev, gpio_str);
  kfree(gpio_str);
  if (!present)
   continue;

  gpios->gpio[i] =
   devm_gpiod_get_index_optional(dev,
            mctrl_gpios_desc[i].name,
            idx,
            mctrl_gpios_desc[i].flags);

  if (IS_ERR(gpios->gpio[i]))
   return ERR_CAST(gpios->gpio[i]);
 }

 return gpios;
}
