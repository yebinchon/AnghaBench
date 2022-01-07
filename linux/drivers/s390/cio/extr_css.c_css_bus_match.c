
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subchannel {scalar_t__ st; scalar_t__ driver_override; } ;
struct device_driver {int name; } ;
struct device {int dummy; } ;
struct css_driver {struct css_device_id* subchannel_type; } ;
struct css_device_id {scalar_t__ type; scalar_t__ match_flags; } ;


 scalar_t__ strcmp (scalar_t__,int ) ;
 struct css_driver* to_cssdriver (struct device_driver*) ;
 struct subchannel* to_subchannel (struct device*) ;

__attribute__((used)) static int css_bus_match(struct device *dev, struct device_driver *drv)
{
 struct subchannel *sch = to_subchannel(dev);
 struct css_driver *driver = to_cssdriver(drv);
 struct css_device_id *id;


 if (sch->driver_override && strcmp(sch->driver_override, drv->name))
  return 0;

 for (id = driver->subchannel_type; id->match_flags; id++) {
  if (sch->st == id->type)
   return 1;
 }

 return 0;
}
