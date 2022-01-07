
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serdev_device {int dummy; } ;
struct device {int dummy; } ;


 int serdev_device_close (struct serdev_device*) ;

__attribute__((used)) static void devm_serdev_device_release(struct device *dev, void *dr)
{
 serdev_device_close(*(struct serdev_device **)dr);
}
