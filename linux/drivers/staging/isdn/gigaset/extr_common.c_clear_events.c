
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_t {int ptr; } ;
struct cardstate {unsigned int ev_head; unsigned int ev_tail; int ev_lock; struct event_t* events; } ;


 unsigned int MAX_EVENTS ;
 int kfree (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void clear_events(struct cardstate *cs)
{
 struct event_t *ev;
 unsigned head, tail;
 unsigned long flags;

 spin_lock_irqsave(&cs->ev_lock, flags);

 head = cs->ev_head;
 tail = cs->ev_tail;

 while (tail != head) {
  ev = cs->events + head;
  kfree(ev->ptr);
  head = (head + 1) % MAX_EVENTS;
 }

 cs->ev_head = tail;

 spin_unlock_irqrestore(&cs->ev_lock, flags);
}
