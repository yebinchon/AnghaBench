
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int GPIOD_FLAGS_BIT_NONEXCLUSIVE ;
 int GPIOD_OUT_LOW ;




 struct gpio_desc* gpiod_get_index_optional (struct device*,char*,int,int) ;

__attribute__((used)) static struct gpio_desc *lm363x_regulator_of_get_enable_gpio(struct device *dev, int id)
{






 switch (id) {
 case 128:
 case 130:
  return gpiod_get_index_optional(dev, "enable", 0,
    GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE);
 case 129:
 case 131:
  return gpiod_get_index_optional(dev, "enable", 1,
    GPIOD_OUT_LOW | GPIOD_FLAGS_BIT_NONEXCLUSIVE);
 default:
  return ((void*)0);
 }
}
