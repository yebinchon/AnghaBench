
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct cmdbuf_t {scalar_t__ wake_tasklet; struct cmdbuf_t* next; } ;
struct cardstate {TYPE_1__* bcs; int cmdlock; scalar_t__ curlen; scalar_t__ cmdbytes; int * lastcmdbuf; struct cmdbuf_t* cmdbuf; } ;
struct TYPE_2__ {int squeue; struct sk_buff* tx_skb; } ;


 int dev_kfree_skb_any (struct sk_buff*) ;
 int kfree (struct cmdbuf_t*) ;
 struct sk_buff* skb_dequeue (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (scalar_t__) ;

__attribute__((used)) static void flush_send_queue(struct cardstate *cs)
{
 struct sk_buff *skb;
 struct cmdbuf_t *cb;
 unsigned long flags;


 spin_lock_irqsave(&cs->cmdlock, flags);
 while ((cb = cs->cmdbuf) != ((void*)0)) {
  cs->cmdbuf = cb->next;
  if (cb->wake_tasklet)
   tasklet_schedule(cb->wake_tasklet);
  kfree(cb);
 }
 cs->cmdbuf = cs->lastcmdbuf = ((void*)0);
 cs->cmdbytes = cs->curlen = 0;
 spin_unlock_irqrestore(&cs->cmdlock, flags);


 if (cs->bcs->tx_skb)
  dev_kfree_skb_any(cs->bcs->tx_skb);
 while ((skb = skb_dequeue(&cs->bcs->squeue)) != ((void*)0))
  dev_kfree_skb_any(skb);
}
