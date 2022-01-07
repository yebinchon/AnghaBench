
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int dummy; } ;
struct vfio_device {int dummy; } ;
struct device {int dummy; } ;


 struct vfio_device* vfio_group_get_device (struct vfio_group*,struct device*) ;
 struct vfio_group* vfio_group_get_from_dev (struct device*) ;
 int vfio_group_put (struct vfio_group*) ;

struct vfio_device *vfio_device_get_from_dev(struct device *dev)
{
 struct vfio_group *group;
 struct vfio_device *device;

 group = vfio_group_get_from_dev(dev);
 if (!group)
  return ((void*)0);

 device = vfio_group_get_device(group, dev);
 vfio_group_put(group);

 return device;
}
