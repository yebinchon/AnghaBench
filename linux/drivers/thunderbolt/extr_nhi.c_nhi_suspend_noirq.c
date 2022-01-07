
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __nhi_suspend_noirq (struct device*,int ) ;
 int device_may_wakeup (struct device*) ;

__attribute__((used)) static int nhi_suspend_noirq(struct device *dev)
{
 return __nhi_suspend_noirq(dev, device_may_wakeup(dev));
}
