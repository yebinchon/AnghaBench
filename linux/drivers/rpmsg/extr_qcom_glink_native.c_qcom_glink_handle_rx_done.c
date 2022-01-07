
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u32 ;
struct qcom_glink {int dev; int idr_lock; int rcids; } ;
struct glink_core_rx_intent {int in_use; int id; } ;
struct glink_channel {int intent_lock; int riids; } ;


 int dev_err (int ,char*) ;
 void* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int kfree (struct glink_core_rx_intent*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qcom_glink_handle_rx_done(struct qcom_glink *glink,
          u32 cid, uint32_t iid,
          bool reuse)
{
 struct glink_core_rx_intent *intent;
 struct glink_channel *channel;
 unsigned long flags;

 spin_lock_irqsave(&glink->idr_lock, flags);
 channel = idr_find(&glink->rcids, cid);
 spin_unlock_irqrestore(&glink->idr_lock, flags);
 if (!channel) {
  dev_err(glink->dev, "invalid channel id received\n");
  return;
 }

 spin_lock_irqsave(&channel->intent_lock, flags);
 intent = idr_find(&channel->riids, iid);

 if (!intent) {
  spin_unlock_irqrestore(&channel->intent_lock, flags);
  dev_err(glink->dev, "invalid intent id received\n");
  return;
 }

 intent->in_use = 0;

 if (!reuse) {
  idr_remove(&channel->riids, intent->id);
  kfree(intent);
 }
 spin_unlock_irqrestore(&channel->intent_lock, flags);
}
