
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct bcm2835_pinctrl {int dummy; } ;



 int BCM2835_PUD_DOWN ;
 int BCM2835_PUD_OFF ;
 int BCM2835_PUD_UP ;
 int ENOTSUPP ;
 int GPCLR0 ;
 int GPSET0 ;




 int bcm2835_gpio_set_bit (struct bcm2835_pinctrl*,int ,unsigned int) ;
 int bcm2835_pull_config_set (struct bcm2835_pinctrl*,unsigned int,int) ;
 int pinconf_to_config_argument (unsigned long) ;
 int pinconf_to_config_param (unsigned long) ;
 struct bcm2835_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int bcm2835_pinconf_set(struct pinctrl_dev *pctldev,
   unsigned int pin, unsigned long *configs,
   unsigned int num_configs)
{
 struct bcm2835_pinctrl *pc = pinctrl_dev_get_drvdata(pctldev);
 u32 param, arg;
 int i;

 for (i = 0; i < num_configs; i++) {
  param = pinconf_to_config_param(configs[i]);
  arg = pinconf_to_config_argument(configs[i]);

  switch (param) {

  case 132:
   bcm2835_pull_config_set(pc, pin, arg);
   break;


  case 131:
   bcm2835_pull_config_set(pc, pin, BCM2835_PUD_OFF);
   break;

  case 130:
   bcm2835_pull_config_set(pc, pin, BCM2835_PUD_DOWN);
   break;

  case 129:
   bcm2835_pull_config_set(pc, pin, BCM2835_PUD_UP);
   break;


  case 128:
   bcm2835_gpio_set_bit(pc, arg ? GPSET0 : GPCLR0, pin);
   break;

  default:
   return -ENOTSUPP;

  }
 }

 return 0;
}
