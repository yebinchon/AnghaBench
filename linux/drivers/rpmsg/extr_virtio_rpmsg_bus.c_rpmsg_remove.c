
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct virtproc_info {size_t num_bufs; size_t buf_size; int bufs_dma; int rbufs; int vdev; int endpoints; scalar_t__ ns_ept; } ;
struct TYPE_5__ {int parent; } ;
struct virtio_device {TYPE_2__ dev; TYPE_1__* config; struct virtproc_info* priv; } ;
struct TYPE_4__ {int (* del_vqs ) (int ) ;int (* reset ) (struct virtio_device*) ;} ;


 int __rpmsg_destroy_ept (struct virtproc_info*,scalar_t__) ;
 int dev_warn (TYPE_2__*,char*,int) ;
 int device_for_each_child (TYPE_2__*,int *,int ) ;
 int dma_free_coherent (int ,size_t,int ,int ) ;
 int idr_destroy (int *) ;
 int kfree (struct virtproc_info*) ;
 int rpmsg_remove_device ;
 int stub1 (struct virtio_device*) ;
 int stub2 (int ) ;

__attribute__((used)) static void rpmsg_remove(struct virtio_device *vdev)
{
 struct virtproc_info *vrp = vdev->priv;
 size_t total_buf_space = vrp->num_bufs * vrp->buf_size;
 int ret;

 vdev->config->reset(vdev);

 ret = device_for_each_child(&vdev->dev, ((void*)0), rpmsg_remove_device);
 if (ret)
  dev_warn(&vdev->dev, "can't remove rpmsg device: %d\n", ret);

 if (vrp->ns_ept)
  __rpmsg_destroy_ept(vrp, vrp->ns_ept);

 idr_destroy(&vrp->endpoints);

 vdev->config->del_vqs(vrp->vdev);

 dma_free_coherent(vdev->dev.parent, total_buf_space,
     vrp->rbufs, vrp->bufs_dma);

 kfree(vrp);
}
