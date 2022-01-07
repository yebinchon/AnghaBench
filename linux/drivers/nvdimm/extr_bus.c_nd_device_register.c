
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int __nd_device_register (struct device*) ;
 int device_initialize (struct device*) ;

void nd_device_register(struct device *dev)
{
 device_initialize(dev);
 __nd_device_register(dev);
}
