
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;
struct virtio_scsi_vq {int vq_lock; struct virtqueue* vq; } ;
struct virtio_scsi {int dummy; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;
 int virtqueue_disable_cb (struct virtqueue*) ;
 int virtqueue_enable_cb (struct virtqueue*) ;
 void* virtqueue_get_buf (struct virtqueue*,unsigned int*) ;
 int virtqueue_is_broken (struct virtqueue*) ;

__attribute__((used)) static void virtscsi_vq_done(struct virtio_scsi *vscsi,
        struct virtio_scsi_vq *virtscsi_vq,
        void (*fn)(struct virtio_scsi *vscsi, void *buf))
{
 void *buf;
 unsigned int len;
 unsigned long flags;
 struct virtqueue *vq = virtscsi_vq->vq;

 spin_lock_irqsave(&virtscsi_vq->vq_lock, flags);
 do {
  virtqueue_disable_cb(vq);
  while ((buf = virtqueue_get_buf(vq, &len)) != ((void*)0))
   fn(vscsi, buf);

  if (unlikely(virtqueue_is_broken(vq)))
   break;
 } while (!virtqueue_enable_cb(vq));
 spin_unlock_irqrestore(&virtscsi_vq->vq_lock, flags);
}
