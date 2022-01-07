
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int artpec6_pin_groups ;

__attribute__((used)) static int artpec6_get_groups_count(struct pinctrl_dev *pctldev)
{
 return ARRAY_SIZE(artpec6_pin_groups);
}
