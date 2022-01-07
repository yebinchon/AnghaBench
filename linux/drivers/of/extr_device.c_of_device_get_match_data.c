
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct of_device_id {void const* data; } ;
struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int of_match_table; } ;


 struct of_device_id* of_match_device (int ,struct device const*) ;

const void *of_device_get_match_data(const struct device *dev)
{
 const struct of_device_id *match;

 match = of_match_device(dev->driver->of_match_table, dev);
 if (!match)
  return ((void*)0);

 return match->data;
}
