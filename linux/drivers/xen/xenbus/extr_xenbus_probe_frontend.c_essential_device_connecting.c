
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int is_device_connecting (struct device*,void*,int) ;

__attribute__((used)) static int essential_device_connecting(struct device *dev, void *data)
{
 return is_device_connecting(dev, data, 1 );
}
