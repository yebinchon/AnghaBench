
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl_dev {int dev; TYPE_1__* desc; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ link_consumers; } ;


 int DL_FLAG_AUTOREMOVE_CONSUMER ;
 int DL_FLAG_PM_RUNTIME ;
 int device_link_add (struct device*,int ,int) ;

__attribute__((used)) static void pinctrl_link_add(struct pinctrl_dev *pctldev,
        struct device *consumer)
{
 if (pctldev->desc->link_consumers)
  device_link_add(consumer, pctldev->dev,
    DL_FLAG_PM_RUNTIME |
    DL_FLAG_AUTOREMOVE_CONSUMER);
}
