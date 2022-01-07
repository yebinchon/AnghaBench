
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_scsi_vq {int vq; int vq_lock; } ;
struct virtio_scsi_cmd {int dummy; } ;


 int __virtscsi_add_cmd (int ,struct virtio_scsi_cmd*,size_t,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_kick_prepare (int ) ;
 int virtqueue_notify (int ) ;

__attribute__((used)) static int virtscsi_add_cmd(struct virtio_scsi_vq *vq,
        struct virtio_scsi_cmd *cmd,
        size_t req_size, size_t resp_size,
        bool kick)
{
 unsigned long flags;
 int err;
 bool needs_kick = 0;

 spin_lock_irqsave(&vq->vq_lock, flags);
 err = __virtscsi_add_cmd(vq->vq, cmd, req_size, resp_size);
 if (!err && kick)
  needs_kick = virtqueue_kick_prepare(vq->vq);

 spin_unlock_irqrestore(&vq->vq_lock, flags);

 if (needs_kick)
  virtqueue_notify(vq->vq);
 return err;
}
