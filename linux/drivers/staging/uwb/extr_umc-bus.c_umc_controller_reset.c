
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct device* parent; } ;
struct umc_dev {TYPE_1__ dev; } ;
struct device {int dummy; } ;


 int EAGAIN ;
 int device_for_each_child (struct device*,struct device*,int ) ;
 int device_trylock (struct device*) ;
 int device_unlock (struct device*) ;
 int umc_bus_post_reset_helper ;
 int umc_bus_pre_reset_helper ;

int umc_controller_reset(struct umc_dev *umc)
{
 struct device *parent = umc->dev.parent;
 int ret = 0;

 if (!device_trylock(parent))
  return -EAGAIN;
 ret = device_for_each_child(parent, parent, umc_bus_pre_reset_helper);
 if (ret >= 0)
  ret = device_for_each_child(parent, parent, umc_bus_post_reset_helper);
 device_unlock(parent);

 return ret;
}
