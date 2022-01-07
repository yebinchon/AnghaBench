
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct virtqueue {unsigned int index; TYPE_3__* vdev; struct virtio_ccw_vq_info* priv; } ;
struct virtio_ccw_vq_info {TYPE_4__* info_block; int node; } ;
struct virtio_ccw_device {scalar_t__ revision; int cdev; int lock; } ;
struct ccw1 {int count; scalar_t__ cda; int flags; int cmd_code; } ;
typedef scalar_t__ __u32 ;
struct TYPE_6__ {unsigned int index; scalar_t__ used; scalar_t__ avail; scalar_t__ num; scalar_t__ desc; } ;
struct TYPE_5__ {unsigned int index; scalar_t__ num; scalar_t__ align; scalar_t__ queue; } ;
struct TYPE_8__ {TYPE_2__ s; TYPE_1__ l; } ;
struct TYPE_7__ {int dev; } ;


 int CCW_CMD_SET_VQ ;
 int ENODEV ;
 unsigned int VIRTIO_CCW_DOING_SET_VQ ;
 int ccw_device_dma_free (int ,TYPE_4__*,int) ;
 int ccw_io_helper (struct virtio_ccw_device*,struct ccw1*,unsigned int) ;
 int dev_warn (int *,char*,int,unsigned int) ;
 int kfree (struct virtio_ccw_vq_info*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_ccw_device* to_vc_device (TYPE_3__*) ;
 int vring_del_virtqueue (struct virtqueue*) ;

__attribute__((used)) static void virtio_ccw_del_vq(struct virtqueue *vq, struct ccw1 *ccw)
{
 struct virtio_ccw_device *vcdev = to_vc_device(vq->vdev);
 struct virtio_ccw_vq_info *info = vq->priv;
 unsigned long flags;
 int ret;
 unsigned int index = vq->index;


 spin_lock_irqsave(&vcdev->lock, flags);
 list_del(&info->node);
 spin_unlock_irqrestore(&vcdev->lock, flags);


 if (vcdev->revision == 0) {
  info->info_block->l.queue = 0;
  info->info_block->l.align = 0;
  info->info_block->l.index = index;
  info->info_block->l.num = 0;
  ccw->count = sizeof(info->info_block->l);
 } else {
  info->info_block->s.desc = 0;
  info->info_block->s.index = index;
  info->info_block->s.num = 0;
  info->info_block->s.avail = 0;
  info->info_block->s.used = 0;
  ccw->count = sizeof(info->info_block->s);
 }
 ccw->cmd_code = CCW_CMD_SET_VQ;
 ccw->flags = 0;
 ccw->cda = (__u32)(unsigned long)(info->info_block);
 ret = ccw_io_helper(vcdev, ccw,
       VIRTIO_CCW_DOING_SET_VQ | index);




 if (ret && (ret != -ENODEV))
  dev_warn(&vq->vdev->dev, "Error %d while deleting queue %d\n",
    ret, index);

 vring_del_virtqueue(vq);
 ccw_device_dma_free(vcdev->cdev, info->info_block,
       sizeof(*info->info_block));
 kfree(info);
}
