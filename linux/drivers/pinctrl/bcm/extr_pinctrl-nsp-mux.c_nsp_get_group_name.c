
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct nsp_pinctrl {TYPE_1__* groups; } ;
struct TYPE_2__ {char const* name; } ;


 struct nsp_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *nsp_get_group_name(struct pinctrl_dev *pctrl_dev,
          unsigned int selector)
{
 struct nsp_pinctrl *pinctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return pinctrl->groups[selector].name;
}
