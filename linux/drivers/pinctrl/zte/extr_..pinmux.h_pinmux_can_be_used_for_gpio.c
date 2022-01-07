
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;



__attribute__((used)) static inline bool pinmux_can_be_used_for_gpio(struct pinctrl_dev *pctldev,
            unsigned pin)
{
 return 1;
}
