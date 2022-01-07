
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {int tx; } ;


 int RING_HAS_UNCONSUMED_REQUESTS (int *) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline int tx_work_todo(struct xenvif_queue *queue)
{
 if (likely(RING_HAS_UNCONSUMED_REQUESTS(&queue->tx)))
  return 1;

 return 0;
}
