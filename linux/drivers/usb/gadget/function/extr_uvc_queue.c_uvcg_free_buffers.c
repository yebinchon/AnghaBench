
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int queue; } ;


 int vb2_queue_release (int *) ;

void uvcg_free_buffers(struct uvc_video_queue *queue)
{
 vb2_queue_release(&queue->queue);
}
