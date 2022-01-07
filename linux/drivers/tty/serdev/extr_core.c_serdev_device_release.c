
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct serdev_device*) ;
 struct serdev_device* to_serdev_device (struct device*) ;

__attribute__((used)) static void serdev_device_release(struct device *dev)
{
 struct serdev_device *serdev = to_serdev_device(dev);
 kfree(serdev);
}
