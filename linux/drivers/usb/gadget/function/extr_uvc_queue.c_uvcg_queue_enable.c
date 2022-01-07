
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
struct uvc_video_queue {int irqlock; int flags; int irqqueue; TYPE_1__ queue; scalar_t__ buf_used; scalar_t__ sequence; } ;


 int INIT_LIST_HEAD (int *) ;
 int UVC_QUEUE_DISCONNECTED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vb2_streamoff (TYPE_1__*,int ) ;
 int vb2_streamon (TYPE_1__*,int ) ;

int uvcg_queue_enable(struct uvc_video_queue *queue, int enable)
{
 unsigned long flags;
 int ret = 0;

 if (enable) {
  ret = vb2_streamon(&queue->queue, queue->queue.type);
  if (ret < 0)
   return ret;

  queue->sequence = 0;
  queue->buf_used = 0;
 } else {
  ret = vb2_streamoff(&queue->queue, queue->queue.type);
  if (ret < 0)
   return ret;

  spin_lock_irqsave(&queue->irqlock, flags);
  INIT_LIST_HEAD(&queue->irqqueue);







  queue->flags &= ~UVC_QUEUE_DISCONNECTED;
  spin_unlock_irqrestore(&queue->irqlock, flags);
 }

 return ret;
}
