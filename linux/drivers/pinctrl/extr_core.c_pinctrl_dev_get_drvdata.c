
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinctrl_dev {void* driver_data; } ;



void *pinctrl_dev_get_drvdata(struct pinctrl_dev *pctldev)
{
 return pctldev->driver_data;
}
