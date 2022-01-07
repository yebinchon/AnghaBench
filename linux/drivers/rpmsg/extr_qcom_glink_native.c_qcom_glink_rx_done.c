
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {scalar_t__ intentless; } ;
struct glink_core_rx_intent {int node; int id; int reuse; struct glink_core_rx_intent* data; } ;
struct glink_channel {int intent_work; int intent_lock; int done_intents; int liids; } ;


 int idr_remove (int *,int ) ;
 int kfree (struct glink_core_rx_intent*) ;
 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void qcom_glink_rx_done(struct qcom_glink *glink,
          struct glink_channel *channel,
          struct glink_core_rx_intent *intent)
{

 if (glink->intentless) {
  kfree(intent->data);
  kfree(intent);
  return;
 }


 if (!intent->reuse) {
  spin_lock(&channel->intent_lock);
  idr_remove(&channel->liids, intent->id);
  spin_unlock(&channel->intent_lock);
 }


 spin_lock(&channel->intent_lock);
 list_add_tail(&intent->node, &channel->done_intents);
 spin_unlock(&channel->intent_lock);

 schedule_work(&channel->intent_work);
}
