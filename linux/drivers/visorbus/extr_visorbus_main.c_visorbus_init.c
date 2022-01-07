
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_device_info_init (int *,char*,char*) ;
 int bus_register (int *) ;
 int chipset_driverinfo ;
 int clientbus_driverinfo ;
 int debugfs_create_dir (char*,int *) ;
 int initialized ;
 int visorbus_debugfs_dir ;
 int visorbus_type ;

int visorbus_init(void)
{
 int err;

 visorbus_debugfs_dir = debugfs_create_dir("visorbus", ((void*)0));
 bus_device_info_init(&clientbus_driverinfo, "clientbus", "visorbus");
 err = bus_register(&visorbus_type);
 if (err < 0)
  return err;
 initialized = 1;
 bus_device_info_init(&chipset_driverinfo, "chipset", "visorchipset");
 return 0;
}
