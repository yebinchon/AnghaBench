
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {struct device* parent; } ;
struct TYPE_3__ {TYPE_2__ device; } ;


 int bus_unregister (int *) ;
 int device_unregister (TYPE_2__*) ;
 int driver_unregister (int *) ;
 int matrix_bus ;
 TYPE_1__* matrix_dev ;
 int matrix_driver ;
 int root_device_unregister (struct device*) ;

__attribute__((used)) static void vfio_ap_matrix_dev_destroy(void)
{
 struct device *root_device = matrix_dev->device.parent;

 driver_unregister(&matrix_driver);
 device_unregister(&matrix_dev->device);
 bus_unregister(&matrix_bus);
 root_device_unregister(root_device);
}
