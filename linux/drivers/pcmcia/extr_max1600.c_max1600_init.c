
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1600 {unsigned int code; int * gpio; struct device* dev; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (int ) ;


 unsigned int MAX1600_CODE_HIGH ;
 unsigned int MAX1600_CODE_LOW ;
 int MAX1600_GPIO_0VPP ;
 int MAX1600_GPIO_MAX ;
 int PTR_ERR (int ) ;
 int devm_gpiod_get (struct device*,char const*,int ) ;
 int devm_gpiod_get_optional (struct device*,char const*,int ) ;
 struct max1600* devm_kzalloc (struct device*,int,int ) ;
 char*** max1600_gpio_name ;

int max1600_init(struct device *dev, struct max1600 **ptr,
 unsigned int channel, unsigned int code)
{
 struct max1600 *m;
 int chan;
 int i;

 switch (channel) {
 case 129:
  chan = 0;
  break;
 case 128:
  chan = 1;
  break;
 default:
  return -EINVAL;
 }

 if (code != MAX1600_CODE_LOW && code != MAX1600_CODE_HIGH)
  return -EINVAL;

 m = devm_kzalloc(dev, sizeof(*m), GFP_KERNEL);
 if (!m)
  return -ENOMEM;

 m->dev = dev;
 m->code = code;

 for (i = 0; i < MAX1600_GPIO_MAX; i++) {
  const char *name;

  name = max1600_gpio_name[chan][i];
  if (i != MAX1600_GPIO_0VPP) {
   m->gpio[i] = devm_gpiod_get(dev, name, GPIOD_OUT_LOW);
  } else {
   m->gpio[i] = devm_gpiod_get_optional(dev, name,
            GPIOD_OUT_LOW);
   if (!m->gpio[i])
    break;
  }
  if (IS_ERR(m->gpio[i]))
   return PTR_ERR(m->gpio[i]);
 }

 *ptr = m;

 return 0;
}
