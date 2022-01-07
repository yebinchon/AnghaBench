
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiu_queue {scalar_t__ read; scalar_t__ write; } ;



int vchiu_queue_is_empty(struct vchiu_queue *queue)
{
 return queue->read == queue->write;
}
