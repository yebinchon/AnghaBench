
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int PINS_COUNT ;

__attribute__((used)) static int dc_get_groups_count(struct pinctrl_dev *pctldev)
{
 return PINS_COUNT;
}
