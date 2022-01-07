
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_event_queue {size_t tail; int capacity; struct ec_event** entries; } ;
struct ec_event {int dummy; } ;


 scalar_t__ event_queue_empty (struct ec_event_queue*) ;

__attribute__((used)) static struct ec_event *event_queue_pop(struct ec_event_queue *q)
{
 struct ec_event *ev;

 if (event_queue_empty(q))
  return ((void*)0);

 ev = q->entries[q->tail];
 q->entries[q->tail] = ((void*)0);
 q->tail = (q->tail + 1) % q->capacity;

 return ev;
}
