
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bus; } ;
struct virtio_driver {TYPE_1__ driver; int feature_table; scalar_t__ feature_table_size; } ;


 int BUG_ON (int) ;
 int driver_register (TYPE_1__*) ;
 int virtio_bus ;

int register_virtio_driver(struct virtio_driver *driver)
{

 BUG_ON(driver->feature_table_size && !driver->feature_table);
 driver->driver.bus = &virtio_bus;
 return driver_register(&driver->driver);
}
