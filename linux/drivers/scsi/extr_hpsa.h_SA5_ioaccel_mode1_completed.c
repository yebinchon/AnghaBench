
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ u64 ;
struct reply_queue_buffer {scalar_t__* head; size_t current_entry; size_t size; } ;
struct ctlr_info {size_t nreply_queues; int commands_outstanding; scalar_t__ vaddr; struct reply_queue_buffer* reply_queue; } ;


 int BUG_ON (int) ;
 scalar_t__ IOACCEL_MODE1_CONSUMER_INDEX ;
 scalar_t__ IOACCEL_MODE1_REPLY_UNUSED ;
 int atomic_dec (int *) ;
 int wmb () ;
 int writel (size_t,scalar_t__) ;

__attribute__((used)) static unsigned long SA5_ioaccel_mode1_completed(struct ctlr_info *h, u8 q)
{
 u64 register_value;
 struct reply_queue_buffer *rq = &h->reply_queue[q];

 BUG_ON(q >= h->nreply_queues);

 register_value = rq->head[rq->current_entry];
 if (register_value != IOACCEL_MODE1_REPLY_UNUSED) {
  rq->head[rq->current_entry] = IOACCEL_MODE1_REPLY_UNUSED;
  if (++rq->current_entry == rq->size)
   rq->current_entry = 0;






  wmb();
  writel((q << 24) | rq->current_entry, h->vaddr +
    IOACCEL_MODE1_CONSUMER_INDEX);
  atomic_dec(&h->commands_outstanding);
 }
 return (unsigned long) register_value;
}
