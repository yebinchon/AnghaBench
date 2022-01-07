
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_event_queue {size_t head; size_t tail; int * entries; } ;



__attribute__((used)) static inline bool event_queue_empty(struct ec_event_queue *q)
{

 return q->head == q->tail && !q->entries[q->head];
}
