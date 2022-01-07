
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_buffer {int dummy; } ;
struct uvc_video_queue {int queue; } ;


 int vb2_querybuf (int *,struct v4l2_buffer*) ;

int uvcg_query_buffer(struct uvc_video_queue *queue, struct v4l2_buffer *buf)
{
 return vb2_querybuf(&queue->queue, buf);
}
