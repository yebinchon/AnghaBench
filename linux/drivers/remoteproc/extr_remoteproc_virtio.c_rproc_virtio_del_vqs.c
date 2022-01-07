
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;


 int __rproc_virtio_del_vqs (struct virtio_device*) ;

__attribute__((used)) static void rproc_virtio_del_vqs(struct virtio_device *vdev)
{
 __rproc_virtio_del_vqs(vdev);
}
