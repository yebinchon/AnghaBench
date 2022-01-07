
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct berlin_pinctrl {TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* groups; } ;
struct TYPE_3__ {char const* name; } ;


 struct berlin_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *berlin_pinctrl_get_group_name(struct pinctrl_dev *pctrl_dev,
       unsigned group)
{
 struct berlin_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctrl_dev);

 return pctrl->desc->groups[group].name;
}
