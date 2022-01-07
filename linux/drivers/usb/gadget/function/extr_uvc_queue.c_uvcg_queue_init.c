
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int io_modes; int buf_struct_size; int timestamp_flags; int * mem_ops; struct mutex* lock; int * ops; struct uvc_video_queue* drv_priv; } ;
struct uvc_video_queue {scalar_t__ flags; int irqqueue; int irqlock; TYPE_1__ queue; } ;
struct uvc_buffer {int dummy; } ;
struct mutex {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int INIT_LIST_HEAD (int *) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_FLAG_TSTAMP_SRC_EOF ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_USERPTR ;
 int spin_lock_init (int *) ;
 int uvc_queue_qops ;
 int vb2_queue_init (TYPE_1__*) ;
 int vb2_vmalloc_memops ;

int uvcg_queue_init(struct uvc_video_queue *queue, enum v4l2_buf_type type,
      struct mutex *lock)
{
 int ret;

 queue->queue.type = type;
 queue->queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
 queue->queue.drv_priv = queue;
 queue->queue.buf_struct_size = sizeof(struct uvc_buffer);
 queue->queue.ops = &uvc_queue_qops;
 queue->queue.lock = lock;
 queue->queue.mem_ops = &vb2_vmalloc_memops;
 queue->queue.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC
         | V4L2_BUF_FLAG_TSTAMP_SRC_EOF;
 ret = vb2_queue_init(&queue->queue);
 if (ret)
  return ret;

 spin_lock_init(&queue->irqlock);
 INIT_LIST_HEAD(&queue->irqqueue);
 queue->flags = 0;

 return 0;
}
