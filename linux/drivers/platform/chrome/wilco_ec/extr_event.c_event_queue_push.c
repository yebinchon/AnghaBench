
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_event_queue {size_t head; int capacity; struct ec_event** entries; } ;
struct ec_event {int dummy; } ;


 scalar_t__ event_queue_full (struct ec_event_queue*) ;
 struct ec_event* event_queue_pop (struct ec_event_queue*) ;

__attribute__((used)) static struct ec_event *event_queue_push(struct ec_event_queue *q,
      struct ec_event *ev)
{
 struct ec_event *popped = ((void*)0);

 if (event_queue_full(q))
  popped = event_queue_pop(q);
 q->entries[q->head] = ev;
 q->head = (q->head + 1) % q->capacity;

 return popped;
}
