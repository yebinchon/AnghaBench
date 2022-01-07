
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_pio_control {int dummy; } ;
struct st_pinctrl {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 struct st_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct st_pio_control* st_get_pio_control (struct pinctrl_dev*,unsigned int) ;
 int st_gpio_pin (unsigned int) ;
 int st_pinconf_set_config (struct st_pio_control*,int,unsigned long) ;
 int st_pinconf_set_retime (struct st_pinctrl*,struct st_pio_control*,int,unsigned long) ;

__attribute__((used)) static int st_pinconf_set(struct pinctrl_dev *pctldev, unsigned pin_id,
   unsigned long *configs, unsigned num_configs)
{
 int pin = st_gpio_pin(pin_id);
 struct st_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
 struct st_pio_control *pc = st_get_pio_control(pctldev, pin_id);
 int i;

 for (i = 0; i < num_configs; i++) {
  st_pinconf_set_config(pc, pin, configs[i]);
  st_pinconf_set_retime(info, pc, pin, configs[i]);
 }

 return 0;
}
