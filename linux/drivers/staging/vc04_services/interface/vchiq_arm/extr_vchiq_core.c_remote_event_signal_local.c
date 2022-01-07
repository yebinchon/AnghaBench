
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct remote_event {int fired; scalar_t__ armed; } ;


 int wake_up_all (int *) ;

__attribute__((used)) static inline void
remote_event_signal_local(wait_queue_head_t *wq, struct remote_event *event)
{
 event->fired = 1;
 event->armed = 0;
 wake_up_all(wq);
}
