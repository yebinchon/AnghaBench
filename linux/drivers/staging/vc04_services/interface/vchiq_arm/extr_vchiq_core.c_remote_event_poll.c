
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct remote_event {scalar_t__ armed; scalar_t__ fired; } ;


 int remote_event_signal_local (int *,struct remote_event*) ;

__attribute__((used)) static inline void
remote_event_poll(wait_queue_head_t *wq, struct remote_event *event)
{
 if (event->fired && event->armed)
  remote_event_signal_local(wq, event);
}
