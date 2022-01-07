
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct remote_event {int armed; scalar_t__ fired; } ;


 int dsb (int ) ;
 int sy ;
 scalar_t__ wait_event_interruptible (int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static inline int
remote_event_wait(wait_queue_head_t *wq, struct remote_event *event)
{
 if (!event->fired) {
  event->armed = 1;
  dsb(sy);
  if (wait_event_interruptible(*wq, event->fired)) {
   event->armed = 0;
   return 0;
  }
  event->armed = 0;
  wmb();
 }

 event->fired = 0;
 return 1;
}
