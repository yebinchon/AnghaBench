
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int queue; } ;
struct srp_target {TYPE_1__ iu_queue; } ;
struct iu_entry {scalar_t__ flags; struct srp_target* target; } ;


 int WARN_ONCE (int,char*) ;
 int kfifo_out_locked (int *,void*,int,int *) ;

struct iu_entry *srp_iu_get(struct srp_target *target)
{
 struct iu_entry *iue = ((void*)0);

 if (kfifo_out_locked(&target->iu_queue.queue, (void *)&iue,
        sizeof(void *),
        &target->iu_queue.lock) != sizeof(void *)) {
  WARN_ONCE(1, "unexpected fifo state");
  return ((void*)0);
 }
 if (!iue)
  return iue;
 iue->target = target;
 iue->flags = 0;
 return iue;
}
