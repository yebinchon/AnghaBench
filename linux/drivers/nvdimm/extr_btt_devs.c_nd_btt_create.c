
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dummy; } ;
struct device {int dummy; } ;


 struct device* __nd_btt_create (struct nd_region*,int ,int *,int *) ;
 int __nd_device_register (struct device*) ;

struct device *nd_btt_create(struct nd_region *nd_region)
{
 struct device *dev = __nd_btt_create(nd_region, 0, ((void*)0), ((void*)0));

 __nd_device_register(dev);
 return dev;
}
