
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct knav_queue_notify_config {scalar_t__ fn; int fn_arg; } ;
struct knav_queue {int notifier_fn_arg; scalar_t__ notifier_fn; TYPE_2__* inst; } ;
typedef scalar_t__ knav_queue_notify_fn ;
struct TYPE_4__ {TYPE_1__* range; } ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;
 int ENOTSUPP ;
 int RANGE_HAS_ACCUMULATOR ;
 int RANGE_HAS_IRQ ;
 int knav_queue_disable_notifier (struct knav_queue*) ;
 int knav_queue_enable_notifier (struct knav_queue*) ;

__attribute__((used)) static int knav_queue_set_notifier(struct knav_queue *qh,
    struct knav_queue_notify_config *cfg)
{
 knav_queue_notify_fn old_fn = qh->notifier_fn;

 if (!cfg)
  return -EINVAL;

 if (!(qh->inst->range->flags & (RANGE_HAS_ACCUMULATOR | RANGE_HAS_IRQ)))
  return -ENOTSUPP;

 if (!cfg->fn && old_fn)
  knav_queue_disable_notifier(qh);

 qh->notifier_fn = cfg->fn;
 qh->notifier_fn_arg = cfg->fn_arg;

 if (cfg->fn && !old_fn)
  knav_queue_enable_notifier(qh);

 return 0;
}
