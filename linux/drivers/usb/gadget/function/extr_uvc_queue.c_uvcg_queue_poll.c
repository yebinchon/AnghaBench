
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int queue; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;


 int vb2_poll (int *,struct file*,int *) ;

__poll_t uvcg_queue_poll(struct uvc_video_queue *queue, struct file *file,
        poll_table *wait)
{
 return vb2_poll(&queue->queue, file, wait);
}
