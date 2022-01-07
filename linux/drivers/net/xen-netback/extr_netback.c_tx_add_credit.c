
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenvif_queue {unsigned long credit_bytes; unsigned long remaining_credit; int rate_limited; } ;


 unsigned long ULONG_MAX ;
 unsigned long max (unsigned long,unsigned long) ;
 unsigned long min (unsigned long,unsigned long) ;

__attribute__((used)) static void tx_add_credit(struct xenvif_queue *queue)
{
 unsigned long max_burst, max_credit;





 max_burst = max(131072UL, queue->credit_bytes);


 max_credit = queue->remaining_credit + queue->credit_bytes;
 if (max_credit < queue->remaining_credit)
  max_credit = ULONG_MAX;

 queue->remaining_credit = min(max_credit, max_burst);
 queue->rate_limited = 0;
}
