
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pinctrl_dev {int dummy; } ;
struct ltq_pinmux_info {int * membase; } ;


 int GPIO3_ALT1 ;
 int GPIO_ALT0 (int) ;
 int GPIO_ALT1 (int) ;
 int MUX_ALT0 ;
 int MUX_ALT1 ;
 int PORT (int) ;
 int PORT3 ;
 int PORT_PIN (int) ;
 int gpio_clearbit (int ,int ,int ) ;
 int gpio_setbit (int ,int ,int ) ;
 struct ltq_pinmux_info* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static inline int xway_mux_apply(struct pinctrl_dev *pctrldev,
    int pin, int mux)
{
 struct ltq_pinmux_info *info = pinctrl_dev_get_drvdata(pctrldev);
 int port = PORT(pin);
 u32 alt1_reg = GPIO_ALT1(pin);

 if (port == PORT3)
  alt1_reg = GPIO3_ALT1;

 if (mux & MUX_ALT0)
  gpio_setbit(info->membase[0], GPIO_ALT0(pin), PORT_PIN(pin));
 else
  gpio_clearbit(info->membase[0], GPIO_ALT0(pin), PORT_PIN(pin));

 if (mux & MUX_ALT1)
  gpio_setbit(info->membase[0], alt1_reg, PORT_PIN(pin));
 else
  gpio_clearbit(info->membase[0], alt1_reg, PORT_PIN(pin));

 return 0;
}
