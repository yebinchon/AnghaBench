
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvc_video_queue {int queue; } ;


 unsigned long vb2_get_unmapped_area (int *,int ,int ,unsigned long,int ) ;

unsigned long uvcg_queue_get_unmapped_area(struct uvc_video_queue *queue,
        unsigned long pgoff)
{
 return vb2_get_unmapped_area(&queue->queue, 0, 0, pgoff, 0);
}
