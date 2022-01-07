
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
 unsigned long LTQ_PINCONF_PACK (int,int) ;



 int LTQ_PINCONF_UNPACK_PARAM (unsigned long) ;
 int PORT (unsigned int) ;
 int PORT3 ;
 int PORT_PIN (unsigned int) ;
 int dev_err (int ,char*,int) ;
 int gpio_getbit (int ,int ,int ) ;
 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int xway_pinconf_get(struct pinctrl_dev *pctldev,
    unsigned pin,
    unsigned long *config)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctldev);
 enum ltq_pinconf_param param = LTQ_PINCONF_UNPACK_PARAM(*config);
 int port = PORT(pin);
 u32 reg;

 switch (param) {
 case 130:
  if (port == PORT3)
   reg = GPIO3_OD;
  else
   reg = GPIO_OD(pin);
  *config = LTQ_PINCONF_PACK(param,
   !gpio_getbit(info->membase[0], reg, PORT_PIN(pin)));
  break;

 case 128:
  if (port == PORT3)
   reg = GPIO3_PUDEN;
  else
   reg = GPIO_PUDEN(pin);
  if (!gpio_getbit(info->membase[0], reg, PORT_PIN(pin))) {
   *config = LTQ_PINCONF_PACK(param, 0);
   break;
  }

  if (port == PORT3)
   reg = GPIO3_PUDSEL;
  else
   reg = GPIO_PUDSEL(pin);
  if (!gpio_getbit(info->membase[0], reg, PORT_PIN(pin)))
   *config = LTQ_PINCONF_PACK(param, 2);
  else
   *config = LTQ_PINCONF_PACK(param, 1);
  break;

 case 129:
  reg = GPIO_DIR(pin);
  *config = LTQ_PINCONF_PACK(param,
   gpio_getbit(info->membase[0], reg, PORT_PIN(pin)));
  break;
 default:
  dev_err(pctldev->dev, "Invalid config param %04x\n", param);
  return -ENOTSUPP;
 }
 return 0;
}
