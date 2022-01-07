
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r3964_info {int * tx_last; struct r3964_block_header* tx_first; int lock; TYPE_1__* tty; } ;
struct r3964_block_header {struct r3964_block_header* next; int length; scalar_t__ owner; } ;
struct TYPE_2__ {int read_wait; } ;


 int R3964_MSG_ACK ;
 int TRACE_M (char*,struct r3964_block_header*) ;
 int TRACE_Q (char*,struct r3964_block_header*,int *) ;
 int add_msg (scalar_t__,int ,int ,int,int *) ;
 int kfree (struct r3964_block_header*) ;
 int printk (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void remove_from_tx_queue(struct r3964_info *pInfo, int error_code)
{
 struct r3964_block_header *pHeader;
 unsigned long flags;




 pHeader = pInfo->tx_first;

 if (pHeader == ((void*)0))
  return;
 if (pHeader->owner) {
  if (error_code) {
   add_msg(pHeader->owner, R3964_MSG_ACK, 0,
    error_code, ((void*)0));
  } else {
   add_msg(pHeader->owner, R3964_MSG_ACK, pHeader->length,
    error_code, ((void*)0));
  }
  wake_up_interruptible(&pInfo->tty->read_wait);
 }

 spin_lock_irqsave(&pInfo->lock, flags);

 pInfo->tx_first = pHeader->next;
 if (pInfo->tx_first == ((void*)0)) {
  pInfo->tx_last = ((void*)0);
 }

 spin_unlock_irqrestore(&pInfo->lock, flags);

 kfree(pHeader);
 TRACE_M("remove_from_tx_queue - kfree %p", pHeader);

 TRACE_Q("remove_from_tx_queue: tx_first = %p, tx_last = %p",
  pInfo->tx_first, pInfo->tx_last);
}
