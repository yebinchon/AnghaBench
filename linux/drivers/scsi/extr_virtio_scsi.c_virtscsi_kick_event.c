
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_scsi_event_node {int event; int work; } ;
struct virtio_scsi_event {int dummy; } ;
struct TYPE_2__ {int vq_lock; int vq; } ;
struct virtio_scsi {TYPE_1__ event_vq; } ;
struct scatterlist {int dummy; } ;


 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 int sg_init_one (struct scatterlist*,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtqueue_add_inbuf (int ,struct scatterlist*,int,struct virtio_scsi_event_node*,int ) ;
 int virtqueue_kick (int ) ;
 int virtscsi_handle_event ;

__attribute__((used)) static int virtscsi_kick_event(struct virtio_scsi *vscsi,
          struct virtio_scsi_event_node *event_node)
{
 int err;
 struct scatterlist sg;
 unsigned long flags;

 INIT_WORK(&event_node->work, virtscsi_handle_event);
 sg_init_one(&sg, &event_node->event, sizeof(struct virtio_scsi_event));

 spin_lock_irqsave(&vscsi->event_vq.vq_lock, flags);

 err = virtqueue_add_inbuf(vscsi->event_vq.vq, &sg, 1, event_node,
      GFP_ATOMIC);
 if (!err)
  virtqueue_kick(vscsi->event_vq.vq);

 spin_unlock_irqrestore(&vscsi->event_vq.vq_lock, flags);

 return err;
}
