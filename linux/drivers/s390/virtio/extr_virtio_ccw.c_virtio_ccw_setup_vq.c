
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vq_callback_t ;
typedef void* u64 ;
struct virtqueue {struct virtio_ccw_vq_info* priv; } ;
struct virtio_device {int dummy; } ;
struct virtio_ccw_vq_info {int num; TYPE_3__* info_block; int node; struct virtqueue* vq; } ;
struct virtio_ccw_device {scalar_t__ revision; TYPE_4__* cdev; int lock; int virtqueues; } ;
struct ccw1 {int count; scalar_t__ cda; int flags; int cmd_code; } ;
typedef void* __u64 ;
typedef scalar_t__ __u32 ;
struct TYPE_10__ {int dev; } ;
struct TYPE_8__ {int index; int num; void* used; void* avail; void* desc; } ;
struct TYPE_7__ {int index; int num; int align; void* queue; } ;
struct TYPE_9__ {TYPE_2__ s; TYPE_1__ l; } ;


 int CCW_CMD_SET_VQ ;
 int ENOMEM ;
 struct virtqueue* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int KVM_VIRTIO_CCW_RING_ALIGN ;
 int VIRTIO_CCW_DOING_SET_VQ ;
 int ccw_device_dma_free (TYPE_4__*,TYPE_3__*,int) ;
 TYPE_3__* ccw_device_dma_zalloc (TYPE_4__*,int) ;
 int ccw_io_helper (struct virtio_ccw_device*,struct ccw1*,int) ;
 int dev_warn (int *,char*) ;
 int kfree (struct virtio_ccw_vq_info*) ;
 struct virtio_ccw_vq_info* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_ccw_device* to_vc_device (struct virtio_device*) ;
 int virtio_ccw_kvm_notify ;
 int virtio_ccw_read_vq_conf (struct virtio_ccw_device*,struct ccw1*,int) ;
 scalar_t__ virtqueue_get_avail_addr (struct virtqueue*) ;
 void* virtqueue_get_desc_addr (struct virtqueue*) ;
 scalar_t__ virtqueue_get_used_addr (struct virtqueue*) ;
 int virtqueue_get_vring_size (struct virtqueue*) ;
 struct virtqueue* vring_create_virtqueue (int,int,int ,struct virtio_device*,int,int,int,int ,int *,char const*) ;
 int vring_del_virtqueue (struct virtqueue*) ;

__attribute__((used)) static struct virtqueue *virtio_ccw_setup_vq(struct virtio_device *vdev,
          int i, vq_callback_t *callback,
          const char *name, bool ctx,
          struct ccw1 *ccw)
{
 struct virtio_ccw_device *vcdev = to_vc_device(vdev);
 int err;
 struct virtqueue *vq = ((void*)0);
 struct virtio_ccw_vq_info *info;
 u64 queue;
 unsigned long flags;
 bool may_reduce;


 info = kzalloc(sizeof(struct virtio_ccw_vq_info), GFP_KERNEL);
 if (!info) {
  dev_warn(&vcdev->cdev->dev, "no info\n");
  err = -ENOMEM;
  goto out_err;
 }
 info->info_block = ccw_device_dma_zalloc(vcdev->cdev,
       sizeof(*info->info_block));
 if (!info->info_block) {
  dev_warn(&vcdev->cdev->dev, "no info block\n");
  err = -ENOMEM;
  goto out_err;
 }
 info->num = virtio_ccw_read_vq_conf(vcdev, ccw, i);
 if (info->num < 0) {
  err = info->num;
  goto out_err;
 }
 may_reduce = vcdev->revision > 0;
 vq = vring_create_virtqueue(i, info->num, KVM_VIRTIO_CCW_RING_ALIGN,
        vdev, 1, may_reduce, ctx,
        virtio_ccw_kvm_notify, callback, name);

 if (!vq) {

  dev_warn(&vcdev->cdev->dev, "no vq\n");
  err = -ENOMEM;
  goto out_err;
 }

 info->num = virtqueue_get_vring_size(vq);


 queue = virtqueue_get_desc_addr(vq);
 if (vcdev->revision == 0) {
  info->info_block->l.queue = queue;
  info->info_block->l.align = KVM_VIRTIO_CCW_RING_ALIGN;
  info->info_block->l.index = i;
  info->info_block->l.num = info->num;
  ccw->count = sizeof(info->info_block->l);
 } else {
  info->info_block->s.desc = queue;
  info->info_block->s.index = i;
  info->info_block->s.num = info->num;
  info->info_block->s.avail = (__u64)virtqueue_get_avail_addr(vq);
  info->info_block->s.used = (__u64)virtqueue_get_used_addr(vq);
  ccw->count = sizeof(info->info_block->s);
 }
 ccw->cmd_code = CCW_CMD_SET_VQ;
 ccw->flags = 0;
 ccw->cda = (__u32)(unsigned long)(info->info_block);
 err = ccw_io_helper(vcdev, ccw, VIRTIO_CCW_DOING_SET_VQ | i);
 if (err) {
  dev_warn(&vcdev->cdev->dev, "SET_VQ failed\n");
  goto out_err;
 }

 info->vq = vq;
 vq->priv = info;


 spin_lock_irqsave(&vcdev->lock, flags);
 list_add(&info->node, &vcdev->virtqueues);
 spin_unlock_irqrestore(&vcdev->lock, flags);

 return vq;

out_err:
 if (vq)
  vring_del_virtqueue(vq);
 if (info) {
  ccw_device_dma_free(vcdev->cdev, info->info_block,
        sizeof(*info->info_block));
 }
 kfree(info);
 return ERR_PTR(err);
}
