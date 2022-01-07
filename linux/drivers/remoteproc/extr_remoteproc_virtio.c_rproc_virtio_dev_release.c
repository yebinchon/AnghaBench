
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dummy; } ;
struct rproc_vdev {int refcount; } ;
struct rproc {int dev; } ;
struct device {int dummy; } ;


 struct virtio_device* dev_to_virtio (struct device*) ;
 int kfree (struct virtio_device*) ;
 int kref_put (int *,int ) ;
 int put_device (int *) ;
 int rproc_vdev_release ;
 struct rproc* vdev_to_rproc (struct virtio_device*) ;
 struct rproc_vdev* vdev_to_rvdev (struct virtio_device*) ;

__attribute__((used)) static void rproc_virtio_dev_release(struct device *dev)
{
 struct virtio_device *vdev = dev_to_virtio(dev);
 struct rproc_vdev *rvdev = vdev_to_rvdev(vdev);
 struct rproc *rproc = vdev_to_rproc(vdev);

 kfree(vdev);

 kref_put(&rvdev->refcount, rproc_vdev_release);

 put_device(&rproc->dev);
}
