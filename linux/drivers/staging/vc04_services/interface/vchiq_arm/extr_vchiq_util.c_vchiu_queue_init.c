
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiu_queue {int size; int initialized; int storage; int push; int pop; scalar_t__ write; scalar_t__ read; } ;
struct vchiq_header {int dummy; } ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int init_completion (int *) ;
 int is_pow2 (int) ;
 int kcalloc (int,int,int ) ;
 int vchiu_queue_delete (struct vchiu_queue*) ;

int vchiu_queue_init(struct vchiu_queue *queue, int size)
{
 WARN_ON(!is_pow2(size));

 queue->size = size;
 queue->read = 0;
 queue->write = 0;
 queue->initialized = 1;

 init_completion(&queue->pop);
 init_completion(&queue->push);

 queue->storage = kcalloc(size, sizeof(struct vchiq_header *),
     GFP_KERNEL);
 if (!queue->storage) {
  vchiu_queue_delete(queue);
  return 0;
 }
 return 1;
}
