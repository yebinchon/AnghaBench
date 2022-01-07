
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {char const* name; } ;



const char *pinctrl_dev_get_name(struct pinctrl_dev *pctldev)
{

 return pctldev->desc->name;
}
