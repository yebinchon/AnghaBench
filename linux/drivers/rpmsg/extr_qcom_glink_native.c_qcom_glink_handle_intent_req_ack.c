
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dev; int idr_lock; int rcids; } ;
struct glink_channel {int intent_req_result; int intent_req_comp; } ;


 int complete (int *) ;
 int dev_err (int ,char*) ;
 struct glink_channel* idr_find (int *,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qcom_glink_handle_intent_req_ack(struct qcom_glink *glink,
          unsigned int cid, bool granted)
{
 struct glink_channel *channel;
 unsigned long flags;

 spin_lock_irqsave(&glink->idr_lock, flags);
 channel = idr_find(&glink->rcids, cid);
 spin_unlock_irqrestore(&glink->idr_lock, flags);
 if (!channel) {
  dev_err(glink->dev, "unable to find channel\n");
  return;
 }

 channel->intent_req_result = granted;
 complete(&channel->intent_req_comp);
}
