
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct pinctrl_dev {int dummy; } ;
struct da850_pupd_data {scalar_t__ base; } ;
typedef enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;


 int BIT (unsigned int) ;
 scalar_t__ DA850_PUPD_ENA ;
 scalar_t__ DA850_PUPD_SEL ;
 int EINVAL ;



 unsigned long pinconf_to_config_packed (int,int) ;
 int pinconf_to_config_param (unsigned long) ;
 struct da850_pupd_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int da850_pupd_pin_config_group_get(struct pinctrl_dev *pctldev,
        unsigned int selector,
        unsigned long *config)
{
 struct da850_pupd_data *data = pinctrl_dev_get_drvdata(pctldev);
 enum pin_config_param param = pinconf_to_config_param(*config);
 u32 val;
 u16 arg;

 val = readl(data->base + DA850_PUPD_ENA);
 arg = !!(~val & BIT(selector));

 switch (param) {
 case 130:
  break;
 case 128:
 case 129:
  if (arg) {

   arg = 0;
   break;
  }
  val = readl(data->base + DA850_PUPD_SEL);
  if (param == 129)
   val = ~val;
  arg = !!(val & BIT(selector));
  break;
 default:
  return -EINVAL;
 }

 *config = pinconf_to_config_packed(param, arg);

 return 0;
}
