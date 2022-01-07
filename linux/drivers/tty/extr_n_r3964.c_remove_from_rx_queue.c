
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r3964_info {int blocks_in_rx_queue; struct r3964_block_header* rx_last; struct r3964_block_header* rx_first; int lock; } ;
struct r3964_block_header {struct r3964_block_header* next; int length; } ;


 int TRACE_M (char*,struct r3964_block_header*) ;
 int TRACE_Q (char*,struct r3964_block_header*,struct r3964_block_header*,...) ;
 int kfree (struct r3964_block_header*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void remove_from_rx_queue(struct r3964_info *pInfo,
     struct r3964_block_header *pHeader)
{
 unsigned long flags;
 struct r3964_block_header *pFind;

 if (pHeader == ((void*)0))
  return;

 TRACE_Q("remove_from_rx_queue: rx_first = %p, rx_last = %p, count = %d",
  pInfo->rx_first, pInfo->rx_last, pInfo->blocks_in_rx_queue);
 TRACE_Q("remove_from_rx_queue: %p, length %u",
  pHeader, pHeader->length);

 spin_lock_irqsave(&pInfo->lock, flags);

 if (pInfo->rx_first == pHeader) {

  pInfo->rx_first = pHeader->next;

  if (pInfo->rx_first == ((void*)0)) {
   pInfo->rx_last = ((void*)0);
  }
  pInfo->blocks_in_rx_queue--;
 } else {

  for (pFind = pInfo->rx_first; pFind; pFind = pFind->next) {
   if (pFind->next == pHeader) {

    pFind->next = pHeader->next;
    pInfo->blocks_in_rx_queue--;
    if (pFind->next == ((void*)0)) {

     pInfo->rx_last = pFind;
    }
    break;
   }
  }
 }

 spin_unlock_irqrestore(&pInfo->lock, flags);

 kfree(pHeader);
 TRACE_M("remove_from_rx_queue - kfree %p", pHeader);

 TRACE_Q("remove_from_rx_queue: rx_first = %p, rx_last = %p, count = %d",
  pInfo->rx_first, pInfo->rx_last, pInfo->blocks_in_rx_queue);
}
