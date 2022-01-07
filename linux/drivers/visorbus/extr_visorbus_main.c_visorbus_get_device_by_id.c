
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;
struct visor_device {struct device device; } ;
struct visor_busdev {int dev_no; int bus_no; } ;


 struct device* bus_find_device (int *,struct device*,void*,int ) ;
 int match_visorbus_dev_by_id ;
 struct visor_device* to_visor_device (struct device*) ;
 int visorbus_type ;

struct visor_device *visorbus_get_device_by_id(u32 bus_no, u32 dev_no,
            struct visor_device *from)
{
 struct device *dev;
 struct device *dev_start = ((void*)0);
 struct visor_busdev id = {
  .bus_no = bus_no,
  .dev_no = dev_no
 };

 if (from)
  dev_start = &from->device;
 dev = bus_find_device(&visorbus_type, dev_start, (void *)&id,
         match_visorbus_dev_by_id);
 if (!dev)
  return ((void*)0);
 return to_visor_device(dev);
}
