
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsi_event {int event_queue; int event_condition; } ;


 int atomic_set (int *,int) ;
 int init_waitqueue_head (int *) ;

__attribute__((used)) static inline int rsi_init_event(struct rsi_event *pevent)
{
 atomic_set(&pevent->event_condition, 1);
 init_waitqueue_head(&pevent->event_queue);
 return 0;
}
