
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_event_struct {int dummy; } ;
struct event_pool {int size; struct srp_event_struct* events; } ;



__attribute__((used)) static int valid_event_struct(struct event_pool *pool,
    struct srp_event_struct *evt)
{
 int index = evt - pool->events;
 if (index < 0 || index >= pool->size)
  return 0;
 if (evt != pool->events + index)
  return 0;
 return 1;
}
