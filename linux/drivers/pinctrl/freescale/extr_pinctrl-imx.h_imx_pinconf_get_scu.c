
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int imx_pinconf_get_scu(struct pinctrl_dev *pctldev,
          unsigned pin_id, unsigned long *config)
{
 return -EINVAL;
}
