
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;
struct cygnus_pinctrl {int num_groups; } ;


 struct cygnus_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int cygnus_get_groups_count(struct pinctrl_dev *pctrl_dev)
{
 struct cygnus_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return pinctrl->num_groups;
}
