
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dev; } ;
struct ltq_pinmux_info {int * membase; } ;
typedef enum ltq_pinconf_param { ____Placeholder_ltq_pinconf_param } ltq_pinconf_param ;


 int ENOTSUPP ;
 int GPIO3_OD ;
 int GPIO3_PUDEN ;
 int GPIO3_PUDSEL ;
 int GPIO_DIR (unsigned int) ;
 int GPIO_OD (unsigned int) ;
 int GPIO_PUDEN (unsigned int) ;
 int GPIO_PUDSEL (unsigned int) ;



 int LTQ_PINCONF_UNPACK_ARG (unsigned long) ;
 int LTQ_PINCONF_UNPACK_PARAM (unsigned long) ;
 int PORT (unsigned int) ;
 int PORT3 ;
 int PORT_PIN (unsigned int) ;
 int dev_err (int ,char*,int) ;
 int gpio_clearbit (int ,int ,int ) ;
 int gpio_setbit (int ,int ,int ) ;
 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int xway_pinconf_set(struct pinctrl_dev *pctldev,
    unsigned pin,
    unsigned long *configs,
    unsigned num_configs)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctldev);
 enum ltq_pinconf_param param;
 int arg;
 int port = PORT(pin);
 u32 reg;
 int i;

 for (i = 0; i < num_configs; i++) {
  param = LTQ_PINCONF_UNPACK_PARAM(configs[i]);
  arg = LTQ_PINCONF_UNPACK_ARG(configs[i]);

  switch (param) {
  case 130:
   if (port == PORT3)
    reg = GPIO3_OD;
   else
    reg = GPIO_OD(pin);
   if (arg == 0)
    gpio_setbit(info->membase[0],
     reg,
     PORT_PIN(pin));
   else
    gpio_clearbit(info->membase[0],
     reg,
     PORT_PIN(pin));
   break;

  case 128:
   if (port == PORT3)
    reg = GPIO3_PUDEN;
   else
    reg = GPIO_PUDEN(pin);
   if (arg == 0) {
    gpio_clearbit(info->membase[0],
     reg,
     PORT_PIN(pin));
    break;
   }
   gpio_setbit(info->membase[0], reg, PORT_PIN(pin));

   if (port == PORT3)
    reg = GPIO3_PUDSEL;
   else
    reg = GPIO_PUDSEL(pin);
   if (arg == 1)
    gpio_clearbit(info->membase[0],
     reg,
     PORT_PIN(pin));
   else if (arg == 2)
    gpio_setbit(info->membase[0],
     reg,
     PORT_PIN(pin));
   else
    dev_err(pctldev->dev,
     "Invalid pull value %d\n", arg);
   break;

  case 129:
   reg = GPIO_DIR(pin);
   if (arg == 0)
    gpio_clearbit(info->membase[0],
     reg,
     PORT_PIN(pin));
   else
    gpio_setbit(info->membase[0],
     reg,
     PORT_PIN(pin));
   break;

  default:
   dev_err(pctldev->dev,
    "Invalid config param %04x\n", param);
   return -ENOTSUPP;
  }
 }

 return 0;
}
