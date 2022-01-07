
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int index; int dev; } ;


 int device_unregister (int *) ;
 int ida_simple_remove (int *,int) ;
 int virtio_index_ida ;

void unregister_virtio_device(struct virtio_device *dev)
{
 int index = dev->index;

 device_unregister(&dev->dev);
 ida_simple_remove(&virtio_index_ida, index);
}
