
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child (struct device*,int *,int (*) (struct device*,void*)) ;
 int device_may_wakeup (struct device*) ;

__attribute__((used)) static int zynqmp_gpd_is_active_wakeup_path(struct device *dev, void *not_used)
{
 int may_wakeup;

 may_wakeup = device_may_wakeup(dev);
 if (may_wakeup)
  return may_wakeup;

 return device_for_each_child(dev, ((void*)0),
   zynqmp_gpd_is_active_wakeup_path);
}
