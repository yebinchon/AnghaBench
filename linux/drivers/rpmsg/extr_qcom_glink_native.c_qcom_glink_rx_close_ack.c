
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int idr_lock; int lcids; } ;
struct glink_channel {int refcount; scalar_t__ lcid; } ;


 scalar_t__ WARN (int,char*) ;
 struct glink_channel* idr_find (int *,unsigned int) ;
 int idr_remove (int *,scalar_t__) ;
 int kref_put (int *,int ) ;
 int qcom_glink_channel_release ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qcom_glink_rx_close_ack(struct qcom_glink *glink, unsigned int lcid)
{
 struct glink_channel *channel;
 unsigned long flags;

 spin_lock_irqsave(&glink->idr_lock, flags);
 channel = idr_find(&glink->lcids, lcid);
 if (WARN(!channel, "close ack on unknown channel\n")) {
  spin_unlock_irqrestore(&glink->idr_lock, flags);
  return;
 }

 idr_remove(&glink->lcids, channel->lcid);
 channel->lcid = 0;
 spin_unlock_irqrestore(&glink->idr_lock, flags);

 kref_put(&channel->refcount, qcom_glink_channel_release);
}
