
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int GPIOD_ASIS ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int desc_to_gpio (struct gpio_desc*) ;
 struct gpio_desc* gpiod_get_index (struct device*,int *,int,int ) ;
 int gpiod_put (struct gpio_desc*) ;

__attribute__((used)) static int surface3_button_lookup_gpio(struct device *dev, int acpi_index)
{
 struct gpio_desc *desc;
 int gpio;

 desc = gpiod_get_index(dev, ((void*)0), acpi_index, GPIOD_ASIS);
 if (IS_ERR(desc))
  return PTR_ERR(desc);

 gpio = desc_to_gpio(desc);

 gpiod_put(desc);

 return gpio;
}
