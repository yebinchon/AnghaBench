
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_input_event {int value; int code; int type; } ;
struct virtio_input {int lock; int idev; int evt; scalar_t__ ready; } ;
struct TYPE_2__ {struct virtio_input* priv; } ;


 int input_event (int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtinput_queue_evtbuf (struct virtio_input*,struct virtio_input_event*) ;
 struct virtio_input_event* virtqueue_get_buf (int ,unsigned int*) ;
 int virtqueue_kick (struct virtqueue*) ;

__attribute__((used)) static void virtinput_recv_events(struct virtqueue *vq)
{
 struct virtio_input *vi = vq->vdev->priv;
 struct virtio_input_event *event;
 unsigned long flags;
 unsigned int len;

 spin_lock_irqsave(&vi->lock, flags);
 if (vi->ready) {
  while ((event = virtqueue_get_buf(vi->evt, &len)) != ((void*)0)) {
   spin_unlock_irqrestore(&vi->lock, flags);
   input_event(vi->idev,
        le16_to_cpu(event->type),
        le16_to_cpu(event->code),
        le32_to_cpu(event->value));
   spin_lock_irqsave(&vi->lock, flags);
   virtinput_queue_evtbuf(vi, event);
  }
  virtqueue_kick(vq);
 }
 spin_unlock_irqrestore(&vi->lock, flags);
}
