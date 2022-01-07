
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct reply_queue_buffer {unsigned long* head; size_t current_entry; int wraparound; } ;
struct ctlr_info {size_t max_commands; int commands_outstanding; scalar_t__ vaddr; scalar_t__ msix_vectors; TYPE_1__* pdev; struct reply_queue_buffer* reply_queue; } ;
struct TYPE_2__ {scalar_t__ msi_enabled; } ;


 unsigned long FIFO_EMPTY ;
 scalar_t__ SA5_OUTDB_CLEAR ;
 int SA5_OUTDB_CLEAR_PERF_BIT ;
 scalar_t__ SA5_OUTDB_STATUS ;
 int atomic_dec (int *) ;
 int readl (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static unsigned long SA5_performant_completed(struct ctlr_info *h, u8 q)
{
 struct reply_queue_buffer *rq = &h->reply_queue[q];
 unsigned long register_value = FIFO_EMPTY;


 if (unlikely(!(h->pdev->msi_enabled || h->msix_vectors))) {



  (void) readl(h->vaddr + SA5_OUTDB_STATUS);
  writel(SA5_OUTDB_CLEAR_PERF_BIT, h->vaddr + SA5_OUTDB_CLEAR);



  (void) readl(h->vaddr + SA5_OUTDB_STATUS);
 }

 if ((((u32) rq->head[rq->current_entry]) & 1) == rq->wraparound) {
  register_value = rq->head[rq->current_entry];
  rq->current_entry++;
  atomic_dec(&h->commands_outstanding);
 } else {
  register_value = FIFO_EMPTY;
 }

 if (rq->current_entry == h->max_commands) {
  rq->current_entry = 0;
  rq->wraparound ^= 1;
 }
 return register_value;
}
