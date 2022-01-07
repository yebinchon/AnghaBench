
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct remote_event {scalar_t__ armed; } ;


 int init_waitqueue_head (int *) ;

__attribute__((used)) static inline void
remote_event_create(wait_queue_head_t *wq, struct remote_event *event)
{
 event->armed = 0;


 init_waitqueue_head(wq);
}
