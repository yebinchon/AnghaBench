
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_device {int kref; int group; } ;


 int kref_get (int *) ;
 int vfio_group_get (int ) ;

__attribute__((used)) static void vfio_device_get(struct vfio_device *device)
{
 vfio_group_get(device->group);
 kref_get(&device->kref);
}
