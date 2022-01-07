
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct u300_gpio {int dummy; } ;
struct gpio_chip {int dummy; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int EINVAL ;
 int ENOTSUPP ;





 unsigned int U300_GPIO_PXPCR_PIN_MODE_MASK ;
 unsigned int U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_DRAIN ;
 unsigned int U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_SOURCE ;
 unsigned int U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL ;
 unsigned int U300_PIN_BIT (unsigned int) ;
 int U300_PIN_REG (unsigned int,int ) ;
 struct u300_gpio* gpiochip_get_data (struct gpio_chip*) ;
 int pcr ;
 int per ;
 unsigned int readl (int ) ;

int u300_gpio_config_get(struct gpio_chip *chip,
    unsigned offset,
    unsigned long *config)
{
 struct u300_gpio *gpio = gpiochip_get_data(chip);
 enum pin_config_param param = (enum pin_config_param) *config;
 bool biasmode;
 u32 drmode;


 biasmode = !!(readl(U300_PIN_REG(offset, per)) & U300_PIN_BIT(offset));


 drmode = readl(U300_PIN_REG(offset, pcr));
 drmode &= (U300_GPIO_PXPCR_PIN_MODE_MASK << ((offset & 0x07) << 1));
 drmode >>= ((offset & 0x07) << 1);

 switch (param) {
 case 132:
  *config = 0;
  if (biasmode)
   return 0;
  else
   return -EINVAL;
  break;
 case 131:
  *config = 0;
  if (!biasmode)
   return 0;
  else
   return -EINVAL;
  break;
 case 128:
  *config = 0;
  if (drmode == U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL)
   return 0;
  else
   return -EINVAL;
  break;
 case 130:
  *config = 0;
  if (drmode == U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_DRAIN)
   return 0;
  else
   return -EINVAL;
  break;
 case 129:
  *config = 0;
  if (drmode == U300_GPIO_PXPCR_PIN_MODE_OUTPUT_OPEN_SOURCE)
   return 0;
  else
   return -EINVAL;
  break;
 default:
  break;
 }
 return -ENOTSUPP;
}
