
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmt_pinctrl_data {char** groups; unsigned int ngroups; } ;
struct pinctrl_dev {int dummy; } ;


 struct wmt_pinctrl_data* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int wmt_pmx_get_function_groups(struct pinctrl_dev *pctldev,
           unsigned selector,
           const char * const **groups,
           unsigned * const num_groups)
{
 struct wmt_pinctrl_data *data = pinctrl_dev_get_drvdata(pctldev);


 *groups = data->groups;
 *num_groups = data->ngroups;

 return 0;
}
