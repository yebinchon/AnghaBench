
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct most_interface {TYPE_1__* p; } ;
struct TYPE_6__ {scalar_t__ num_buffers; struct core_component* comp; scalar_t__ refs; } ;
struct TYPE_5__ {scalar_t__ num_buffers; struct core_component* comp; scalar_t__ refs; } ;
struct most_channel {int fifo_lock; int fifo; TYPE_3__ pipe1; TYPE_2__ pipe0; } ;
struct core_component {int dummy; } ;
struct TYPE_4__ {struct most_channel** channel; } ;


 int EINVAL ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

int channel_has_mbo(struct most_interface *iface, int id,
      struct core_component *comp)
{
 struct most_channel *c = iface->p->channel[id];
 unsigned long flags;
 int empty;

 if (unlikely(!c))
  return -EINVAL;

 if (c->pipe0.refs && c->pipe1.refs &&
     ((comp == c->pipe0.comp && c->pipe0.num_buffers <= 0) ||
      (comp == c->pipe1.comp && c->pipe1.num_buffers <= 0)))
  return 0;

 spin_lock_irqsave(&c->fifo_lock, flags);
 empty = list_empty(&c->fifo);
 spin_unlock_irqrestore(&c->fifo_lock, flags);
 return !empty;
}
