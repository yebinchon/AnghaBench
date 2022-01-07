
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_channel_info {void* dst; void* src; int name; } ;
struct qcom_glink {int idr_lock; int rcids; int dev; } ;
struct glink_channel {int refcount; scalar_t__ rcid; int name; scalar_t__ rpdev; int intent_work; } ;


 void* RPMSG_ADDR_ANY ;
 scalar_t__ WARN (int,char*) ;
 int cancel_work_sync (int *) ;
 struct glink_channel* idr_find (int *,unsigned int) ;
 int idr_remove (int *,scalar_t__) ;
 int kref_put (int *,int ) ;
 int qcom_glink_channel_release ;
 int qcom_glink_send_close_ack (struct qcom_glink*,scalar_t__) ;
 int rpmsg_unregister_device (int ,struct rpmsg_channel_info*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static void qcom_glink_rx_close(struct qcom_glink *glink, unsigned int rcid)
{
 struct rpmsg_channel_info chinfo;
 struct glink_channel *channel;
 unsigned long flags;

 spin_lock_irqsave(&glink->idr_lock, flags);
 channel = idr_find(&glink->rcids, rcid);
 spin_unlock_irqrestore(&glink->idr_lock, flags);
 if (WARN(!channel, "close request on unknown channel\n"))
  return;


 cancel_work_sync(&channel->intent_work);

 if (channel->rpdev) {
  strncpy(chinfo.name, channel->name, sizeof(chinfo.name));
  chinfo.src = RPMSG_ADDR_ANY;
  chinfo.dst = RPMSG_ADDR_ANY;

  rpmsg_unregister_device(glink->dev, &chinfo);
 }

 qcom_glink_send_close_ack(glink, channel->rcid);

 spin_lock_irqsave(&glink->idr_lock, flags);
 idr_remove(&glink->rcids, channel->rcid);
 channel->rcid = 0;
 spin_unlock_irqrestore(&glink->idr_lock, flags);

 kref_put(&channel->refcount, qcom_glink_channel_release);
}
