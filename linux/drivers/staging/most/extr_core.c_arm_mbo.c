
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* comp; scalar_t__ refs; } ;
struct TYPE_6__ {TYPE_1__* comp; scalar_t__ refs; } ;
struct most_channel {int channel_id; int iface; TYPE_4__ pipe1; TYPE_2__ pipe0; int fifo_lock; int fifo; scalar_t__ is_poisoned; } ;
struct mbo {int list; int * num_buffers_ptr; struct most_channel* context; } ;
struct TYPE_7__ {int (* tx_completion ) (int ,int ) ;} ;
struct TYPE_5__ {int (* tx_completion ) (int ,int ) ;} ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;
 int trash_mbo (struct mbo*) ;

__attribute__((used)) static void arm_mbo(struct mbo *mbo)
{
 unsigned long flags;
 struct most_channel *c;

 c = mbo->context;

 if (c->is_poisoned) {
  trash_mbo(mbo);
  return;
 }

 spin_lock_irqsave(&c->fifo_lock, flags);
 ++*mbo->num_buffers_ptr;
 list_add_tail(&mbo->list, &c->fifo);
 spin_unlock_irqrestore(&c->fifo_lock, flags);

 if (c->pipe0.refs && c->pipe0.comp->tx_completion)
  c->pipe0.comp->tx_completion(c->iface, c->channel_id);

 if (c->pipe1.refs && c->pipe1.comp->tx_completion)
  c->pipe1.comp->tx_completion(c->iface, c->channel_id);
}
