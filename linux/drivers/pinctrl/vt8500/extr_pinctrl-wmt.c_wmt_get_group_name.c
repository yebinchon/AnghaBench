
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_pinctrl_data {char const** groups; } ;
struct pinctrl_dev {int dummy; } ;


 struct wmt_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *wmt_get_group_name(struct pinctrl_dev *pctldev,
          unsigned selector)
{
 struct wmt_pinctrl_data *data = pinctrl_dev_get_drvdata(pctldev);

 return data->groups[selector];
}
