
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_desc {int dummy; } ;
struct device {int dummy; } ;


 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 struct gpio_desc* devm_gpiod_get_index (struct device*,char const*,int,int ) ;

__attribute__((used)) static int sharp_ls_get_gpio_of(struct device *dev, int index, int val,
 const char *desc, struct gpio_desc **gpiod)
{
 struct gpio_desc *gd;

 *gpiod = ((void*)0);

 gd = devm_gpiod_get_index(dev, desc, index, GPIOD_OUT_LOW);
 if (IS_ERR(gd))
  return PTR_ERR(gd);

 *gpiod = gd;
 return 0;
}
