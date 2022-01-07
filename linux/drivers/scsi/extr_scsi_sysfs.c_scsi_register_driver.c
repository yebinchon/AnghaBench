
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int * bus; } ;


 int driver_register (struct device_driver*) ;
 int scsi_bus_type ;

int scsi_register_driver(struct device_driver *drv)
{
 drv->bus = &scsi_bus_type;

 return driver_register(drv);
}
