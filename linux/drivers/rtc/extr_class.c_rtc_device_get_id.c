
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* parent; scalar_t__ of_node; } ;
struct TYPE_2__ {scalar_t__ of_node; } ;


 int GFP_KERNEL ;
 int dev_warn (struct device*,char*,int) ;
 int ida_simple_get (int *,int,int,int ) ;
 int of_alias_get_id (scalar_t__,char*) ;
 int rtc_ida ;

__attribute__((used)) static int rtc_device_get_id(struct device *dev)
{
 int of_id = -1, id = -1;

 if (dev->of_node)
  of_id = of_alias_get_id(dev->of_node, "rtc");
 else if (dev->parent && dev->parent->of_node)
  of_id = of_alias_get_id(dev->parent->of_node, "rtc");

 if (of_id >= 0) {
  id = ida_simple_get(&rtc_ida, of_id, of_id + 1, GFP_KERNEL);
  if (id < 0)
   dev_warn(dev, "/aliases ID %d not available\n", of_id);
 }

 if (id < 0)
  id = ida_simple_get(&rtc_ida, 0, 0, GFP_KERNEL);

 return id;
}
