
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {int dev; } ;


 char const* dev_name (int ) ;

const char *pinctrl_dev_get_devname(struct pinctrl_dev *pctldev)
{
 return dev_name(pctldev->dev);
}
