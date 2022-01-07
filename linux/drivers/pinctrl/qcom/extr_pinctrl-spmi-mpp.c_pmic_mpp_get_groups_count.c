
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {TYPE_1__* desc; } ;
struct TYPE_2__ {int npins; } ;



__attribute__((used)) static int pmic_mpp_get_groups_count(struct pinctrl_dev *pctldev)
{

 return pctldev->desc->npins;
}
