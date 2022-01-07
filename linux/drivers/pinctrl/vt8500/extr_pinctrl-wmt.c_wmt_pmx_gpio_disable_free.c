
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_pinctrl_data {int dummy; } ;
struct pinctrl_gpio_range {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int WMT_FSEL_GPIO_IN ;
 struct wmt_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int wmt_set_pinmux (struct wmt_pinctrl_data*,int ,unsigned int) ;

__attribute__((used)) static void wmt_pmx_gpio_disable_free(struct pinctrl_dev *pctldev,
          struct pinctrl_gpio_range *range,
          unsigned offset)
{
 struct wmt_pinctrl_data *data = pinctrl_dev_get_drvdata(pctldev);


 wmt_set_pinmux(data, WMT_FSEL_GPIO_IN, offset);
}
