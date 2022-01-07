
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_event {int event_queue; int event_condition; } ;


 int atomic_set (int *,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static inline void rsi_set_event(struct rsi_event *event)
{
 atomic_set(&event->event_condition, 0);
 wake_up_interruptible(&event->event_queue);
}
