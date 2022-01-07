
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2880_priv {unsigned int group_count; char const** group_names; } ;
struct pinctrl_dev {int dummy; } ;


 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *rt2880_get_group_name(struct pinctrl_dev *pctrldev,
      unsigned int group)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

 return (group >= p->group_count) ? ((void*)0) : p->group_names[group];
}
