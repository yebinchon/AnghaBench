
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiu_queue {int storage; } ;


 int kfree (int ) ;

void vchiu_queue_delete(struct vchiu_queue *queue)
{
 kfree(queue->storage);
}
