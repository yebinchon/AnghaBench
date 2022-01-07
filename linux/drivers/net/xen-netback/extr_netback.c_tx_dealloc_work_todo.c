
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {scalar_t__ dealloc_cons; scalar_t__ dealloc_prod; } ;



__attribute__((used)) static inline bool tx_dealloc_work_todo(struct xenvif_queue *queue)
{
 return queue->dealloc_cons != queue->dealloc_prod;
}
