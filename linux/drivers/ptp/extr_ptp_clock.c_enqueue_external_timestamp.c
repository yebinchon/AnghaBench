
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timestamp_event_queue {size_t tail; int head; int lock; struct ptp_extts_event* buf; } ;
struct TYPE_2__ {int nsec; int sec; } ;
struct ptp_extts_event {TYPE_1__ t; int index; } ;
struct ptp_clock_event {int index; int timestamp; } ;
typedef int s64 ;


 int PTP_MAX_TIMESTAMPS ;
 int div_u64_rem (int ,int,int *) ;
 int queue_free (struct timestamp_event_queue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void enqueue_external_timestamp(struct timestamp_event_queue *queue,
           struct ptp_clock_event *src)
{
 struct ptp_extts_event *dst;
 unsigned long flags;
 s64 seconds;
 u32 remainder;

 seconds = div_u64_rem(src->timestamp, 1000000000, &remainder);

 spin_lock_irqsave(&queue->lock, flags);

 dst = &queue->buf[queue->tail];
 dst->index = src->index;
 dst->t.sec = seconds;
 dst->t.nsec = remainder;

 if (!queue_free(queue))
  queue->head = (queue->head + 1) % PTP_MAX_TIMESTAMPS;

 queue->tail = (queue->tail + 1) % PTP_MAX_TIMESTAMPS;

 spin_unlock_irqrestore(&queue->lock, flags);
}
