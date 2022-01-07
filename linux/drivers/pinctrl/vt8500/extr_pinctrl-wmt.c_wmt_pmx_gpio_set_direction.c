
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_pinctrl_data {int dummy; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int WMT_FSEL_GPIO_IN ;
 int WMT_FSEL_GPIO_OUT ;
 struct wmt_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int wmt_set_pinmux (struct wmt_pinctrl_data*,int ,unsigned int) ;

__attribute__((used)) static int wmt_pmx_gpio_set_direction(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned offset,
          bool input)
{
 struct wmt_pinctrl_data *data = pinctrl_dev_get_drvdata(pctldev);

 wmt_set_pinmux(data, (input ? WMT_FSEL_GPIO_IN : WMT_FSEL_GPIO_OUT),
         offset);

 return 0;
}
