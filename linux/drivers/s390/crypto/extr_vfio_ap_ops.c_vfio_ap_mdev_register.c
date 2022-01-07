
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; int available_instances; } ;


 int MAX_ZDEV_ENTRIES_EXT ;
 int atomic_set (int *,int ) ;
 TYPE_1__* matrix_dev ;
 int mdev_register_device (int *,int *) ;
 int vfio_ap_matrix_ops ;

int vfio_ap_mdev_register(void)
{
 atomic_set(&matrix_dev->available_instances, MAX_ZDEV_ENTRIES_EXT);

 return mdev_register_device(&matrix_dev->device, &vfio_ap_matrix_ops);
}
