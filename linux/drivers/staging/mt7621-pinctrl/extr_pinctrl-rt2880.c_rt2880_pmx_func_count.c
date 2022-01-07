
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2880_priv {int func_count; } ;
struct pinctrl_dev {int dummy; } ;


 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rt2880_pmx_func_count(struct pinctrl_dev *pctrldev)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

 return p->func_count;
}
