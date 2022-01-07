
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;


 TYPE_1__* matrix_dev ;
 int mdev_unregister_device (int *) ;

void vfio_ap_mdev_unregister(void)
{
 mdev_unregister_device(&matrix_dev->device);
}
