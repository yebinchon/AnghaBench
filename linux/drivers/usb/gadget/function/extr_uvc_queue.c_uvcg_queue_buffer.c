
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct uvc_video_queue {int flags; int irqlock; int queue; } ;


 int UVC_QUEUE_PAUSED ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vb2_qbuf (int *,int *,struct v4l2_buffer*) ;

int uvcg_queue_buffer(struct uvc_video_queue *queue, struct v4l2_buffer *buf)
{
 unsigned long flags;
 int ret;

 ret = vb2_qbuf(&queue->queue, ((void*)0), buf);
 if (ret < 0)
  return ret;

 spin_lock_irqsave(&queue->irqlock, flags);
 ret = (queue->flags & UVC_QUEUE_PAUSED) != 0;
 queue->flags &= ~UVC_QUEUE_PAUSED;
 spin_unlock_irqrestore(&queue->irqlock, flags);
 return ret;
}
