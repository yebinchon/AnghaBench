
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int device_lock; } ;
struct vfio_device {int kref; struct vfio_group* group; } ;


 int kref_put_mutex (int *,int ,int *) ;
 int vfio_device_release ;
 int vfio_group_put (struct vfio_group*) ;

void vfio_device_put(struct vfio_device *device)
{
 struct vfio_group *group = device->group;
 kref_put_mutex(&device->kref, vfio_device_release, &group->device_lock);
 vfio_group_put(group);
}
