
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wmt_pinctrl_data {TYPE_1__* pins; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {int number; } ;


 struct wmt_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int wmt_set_pinmux (struct wmt_pinctrl_data*,unsigned int,int ) ;

__attribute__((used)) static int wmt_pmx_set_mux(struct pinctrl_dev *pctldev,
      unsigned func_selector,
      unsigned group_selector)
{
 struct wmt_pinctrl_data *data = pinctrl_dev_get_drvdata(pctldev);
 u32 pinnum = data->pins[group_selector].number;

 return wmt_set_pinmux(data, func_selector, pinnum);
}
