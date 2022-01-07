
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_input {int lock; int evt; int * evts; } ;


 int ARRAY_SIZE (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int virtinput_queue_evtbuf (struct virtio_input*,int *) ;
 int virtqueue_get_vring_size (int ) ;
 int virtqueue_kick (int ) ;

__attribute__((used)) static void virtinput_fill_evt(struct virtio_input *vi)
{
 unsigned long flags;
 int i, size;

 spin_lock_irqsave(&vi->lock, flags);
 size = virtqueue_get_vring_size(vi->evt);
 if (size > ARRAY_SIZE(vi->evts))
  size = ARRAY_SIZE(vi->evts);
 for (i = 0; i < size; i++)
  virtinput_queue_evtbuf(vi, &vi->evts[i]);
 virtqueue_kick(vi->evt);
 spin_unlock_irqrestore(&vi->lock, flags);
}
