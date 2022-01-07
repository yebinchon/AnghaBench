
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_group {int device_lock; int device_list; } ;
struct vfio_device_ops {int dummy; } ;
struct vfio_device {int group_next; void* device_data; struct vfio_device_ops const* ops; struct vfio_group* group; struct device* dev; int kref; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct vfio_device* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int dev_set_drvdata (struct device*,struct vfio_device*) ;
 int kref_init (int *) ;
 struct vfio_device* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vfio_group_get (struct vfio_group*) ;

__attribute__((used)) static
struct vfio_device *vfio_group_create_device(struct vfio_group *group,
          struct device *dev,
          const struct vfio_device_ops *ops,
          void *device_data)
{
 struct vfio_device *device;

 device = kzalloc(sizeof(*device), GFP_KERNEL);
 if (!device)
  return ERR_PTR(-ENOMEM);

 kref_init(&device->kref);
 device->dev = dev;
 device->group = group;
 device->ops = ops;
 device->device_data = device_data;
 dev_set_drvdata(dev, device);


 vfio_group_get(group);

 mutex_lock(&group->device_lock);
 list_add(&device->group_next, &group->device_list);
 mutex_unlock(&group->device_lock);

 return device;
}
