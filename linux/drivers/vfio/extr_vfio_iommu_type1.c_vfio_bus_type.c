
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {struct bus_type* bus; } ;
struct bus_type {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int vfio_bus_type(struct device *dev, void *data)
{
 struct bus_type **bus = data;

 if (*bus && *bus != dev->bus)
  return -EINVAL;

 *bus = dev->bus;

 return 0;
}
