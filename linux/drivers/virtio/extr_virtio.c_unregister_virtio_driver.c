
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_driver {int driver; } ;


 int driver_unregister (int *) ;

void unregister_virtio_driver(struct virtio_driver *driver)
{
 driver_unregister(&driver->driver);
}
