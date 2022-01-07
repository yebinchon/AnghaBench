
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EAGAIN ;
 scalar_t__ device_may_wakeup (struct device*) ;
 int device_set_wakeup_capable (struct device*,int) ;

__attribute__((used)) static int cm_suspend_noirq(struct device *dev)
{
 if (device_may_wakeup(dev)) {
  device_set_wakeup_capable(dev, 0);
  return -EAGAIN;
 }

 return 0;
}
