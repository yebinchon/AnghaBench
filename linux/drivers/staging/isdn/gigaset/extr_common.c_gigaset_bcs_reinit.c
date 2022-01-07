
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cardstate {TYPE_1__* ops; int ignoreframes; int lock; } ;
struct TYPE_4__ {int cid; scalar_t__ timer_expires; scalar_t__ timer_active; scalar_t__ ConState; } ;
struct bc_state {struct sk_buff* rx_skb; int ignore; scalar_t__ chstate; int rx_fcs; scalar_t__ emptycount; scalar_t__ inputstate; TYPE_2__ at_state; int squeue; struct cardstate* cs; } ;
struct TYPE_3__ {int (* reinitbcshw ) (struct bc_state*) ;} ;


 int PPP_INITFCS ;
 int clear_at_state (TYPE_2__*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct bc_state*) ;

void gigaset_bcs_reinit(struct bc_state *bcs)
{
 struct sk_buff *skb;
 struct cardstate *cs = bcs->cs;
 unsigned long flags;

 while ((skb = skb_dequeue(&bcs->squeue)) != ((void*)0))
  dev_kfree_skb(skb);

 spin_lock_irqsave(&cs->lock, flags);
 clear_at_state(&bcs->at_state);
 bcs->at_state.ConState = 0;
 bcs->at_state.timer_active = 0;
 bcs->at_state.timer_expires = 0;
 bcs->at_state.cid = -1;
 spin_unlock_irqrestore(&cs->lock, flags);

 bcs->inputstate = 0;





 bcs->rx_fcs = PPP_INITFCS;
 bcs->chstate = 0;

 bcs->ignore = cs->ignoreframes;
 dev_kfree_skb(bcs->rx_skb);
 bcs->rx_skb = ((void*)0);

 cs->ops->reinitbcshw(bcs);
}
