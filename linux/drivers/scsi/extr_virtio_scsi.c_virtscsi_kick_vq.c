
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_vq {int vq; int vq_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_kick_prepare (int ) ;
 int virtqueue_notify (int ) ;

__attribute__((used)) static void virtscsi_kick_vq(struct virtio_scsi_vq *vq)
{
 bool needs_kick;
 unsigned long flags;

 spin_lock_irqsave(&vq->vq_lock, flags);
 needs_kick = virtqueue_kick_prepare(vq->vq);
 spin_unlock_irqrestore(&vq->vq_lock, flags);

 if (needs_kick)
  virtqueue_notify(vq->vq);
}
