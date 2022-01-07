
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rsi_event {int event_condition; int event_queue; } ;


 scalar_t__ atomic_read (int *) ;
 int wait_event_interruptible (int ,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static inline int rsi_wait_event(struct rsi_event *event, u32 timeout)
{
 int status = 0;

 if (!timeout)
  status = wait_event_interruptible(event->event_queue,
    (atomic_read(&event->event_condition) == 0));
 else
  status = wait_event_interruptible_timeout(event->event_queue,
    (atomic_read(&event->event_condition) == 0),
    timeout);
 return status;
}
