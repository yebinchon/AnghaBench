
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; } ;
struct cardstate {int lock; int write_tasklet; scalar_t__ connected; int dev; } ;
struct bc_state {scalar_t__ proto2; int squeue; struct cardstate* cs; } ;


 int ENOMEM ;
 struct sk_buff* HDLC_Encode (struct sk_buff*) ;
 scalar_t__ L2_HDLC ;
 int dev_err (int ,char*) ;
 struct sk_buff* iraw_encode (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_schedule (int *) ;

int gigaset_m10x_send_skb(struct bc_state *bcs, struct sk_buff *skb)
{
 struct cardstate *cs = bcs->cs;
 unsigned len = skb->len;
 unsigned long flags;

 if (bcs->proto2 == L2_HDLC)
  skb = HDLC_Encode(skb);
 else
  skb = iraw_encode(skb);
 if (!skb) {
  dev_err(cs->dev,
   "unable to allocate memory for encoding!\n");
  return -ENOMEM;
 }

 skb_queue_tail(&bcs->squeue, skb);
 spin_lock_irqsave(&cs->lock, flags);
 if (cs->connected)
  tasklet_schedule(&cs->write_tasklet);
 spin_unlock_irqrestore(&cs->lock, flags);

 return len;
}
