
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2880_priv {TYPE_1__** func; } ;
struct pinctrl_dev {int dummy; } ;
struct TYPE_2__ {char const* name; } ;


 struct rt2880_priv* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *rt2880_pmx_func_name(struct pinctrl_dev *pctrldev,
     unsigned int func)
{
 struct rt2880_priv *p = pinctrl_dev_get_drvdata(pctrldev);

 return p->func[func]->name;
}
