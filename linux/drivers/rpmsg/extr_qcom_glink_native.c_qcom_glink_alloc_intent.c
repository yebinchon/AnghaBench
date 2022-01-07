
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dummy; } ;
struct glink_core_rx_intent {int id; size_t size; int reuse; struct glink_core_rx_intent* data; } ;
struct glink_channel {int intent_lock; int liids; } ;


 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int idr_alloc_cyclic (int *,struct glink_core_rx_intent*,int,int,int ) ;
 int kfree (struct glink_core_rx_intent*) ;
 void* kzalloc (size_t,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct glink_core_rx_intent *
qcom_glink_alloc_intent(struct qcom_glink *glink,
   struct glink_channel *channel,
   size_t size,
   bool reuseable)
{
 struct glink_core_rx_intent *intent;
 int ret;
 unsigned long flags;

 intent = kzalloc(sizeof(*intent), GFP_KERNEL);
 if (!intent)
  return ((void*)0);

 intent->data = kzalloc(size, GFP_KERNEL);
 if (!intent->data)
  goto free_intent;

 spin_lock_irqsave(&channel->intent_lock, flags);
 ret = idr_alloc_cyclic(&channel->liids, intent, 1, -1, GFP_ATOMIC);
 if (ret < 0) {
  spin_unlock_irqrestore(&channel->intent_lock, flags);
  goto free_data;
 }
 spin_unlock_irqrestore(&channel->intent_lock, flags);

 intent->id = ret;
 intent->size = size;
 intent->reuse = reuseable;

 return intent;

free_data:
 kfree(intent->data);
free_intent:
 kfree(intent);
 return ((void*)0);
}
