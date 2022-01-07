
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_requestbuffers {int count; } ;
struct uvc_video_queue {int queue; } ;


 int vb2_reqbufs (int *,struct v4l2_requestbuffers*) ;

int uvcg_alloc_buffers(struct uvc_video_queue *queue,
         struct v4l2_requestbuffers *rb)
{
 int ret;

 ret = vb2_reqbufs(&queue->queue, rb);

 return ret ? ret : rb->count;
}
