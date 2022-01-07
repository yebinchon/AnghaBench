
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int device_for_each_child (struct device*,void*,int ) ;
 scalar_t__ is_nd_region (struct device*) ;
 int is_uuid_busy ;

__attribute__((used)) static int is_namespace_uuid_busy(struct device *dev, void *data)
{
 if (is_nd_region(dev))
  return device_for_each_child(dev, data, is_uuid_busy);
 return 0;
}
