
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtqueue {TYPE_1__* vdev; } ;
struct virtio_input_event {int dummy; } ;
struct virtio_input {int lock; int sts; } ;
struct TYPE_2__ {struct virtio_input* priv; } ;


 int kfree (struct virtio_input_event*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct virtio_input_event* virtqueue_get_buf (int ,unsigned int*) ;

__attribute__((used)) static void virtinput_recv_status(struct virtqueue *vq)
{
 struct virtio_input *vi = vq->vdev->priv;
 struct virtio_input_event *stsbuf;
 unsigned long flags;
 unsigned int len;

 spin_lock_irqsave(&vi->lock, flags);
 while ((stsbuf = virtqueue_get_buf(vi->sts, &len)) != ((void*)0))
  kfree(stsbuf);
 spin_unlock_irqrestore(&vi->lock, flags);
}
