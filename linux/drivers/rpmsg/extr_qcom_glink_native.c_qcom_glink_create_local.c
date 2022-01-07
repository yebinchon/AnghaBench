
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int idr_lock; int lcids; } ;
struct glink_channel {int refcount; int lcid; int open_req; int open_ack; } ;


 struct glink_channel* ERR_CAST (struct glink_channel*) ;
 struct glink_channel* ERR_PTR (int ) ;
 int ETIMEDOUT ;
 int HZ ;
 scalar_t__ IS_ERR (struct glink_channel*) ;
 int idr_remove (int *,int ) ;
 int kref_put (int *,int ) ;
 struct glink_channel* qcom_glink_alloc_channel (struct qcom_glink*,char const*) ;
 int qcom_glink_channel_release ;
 int qcom_glink_send_open_ack (struct qcom_glink*,struct glink_channel*) ;
 int qcom_glink_send_open_req (struct qcom_glink*,struct glink_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion_timeout (int *,int) ;

__attribute__((used)) static struct glink_channel *qcom_glink_create_local(struct qcom_glink *glink,
           const char *name)
{
 struct glink_channel *channel;
 int ret;
 unsigned long flags;

 channel = qcom_glink_alloc_channel(glink, name);
 if (IS_ERR(channel))
  return ERR_CAST(channel);

 ret = qcom_glink_send_open_req(glink, channel);
 if (ret)
  goto release_channel;

 ret = wait_for_completion_timeout(&channel->open_ack, 5 * HZ);
 if (!ret)
  goto err_timeout;

 ret = wait_for_completion_timeout(&channel->open_req, 5 * HZ);
 if (!ret)
  goto err_timeout;

 qcom_glink_send_open_ack(glink, channel);

 return channel;

err_timeout:

 spin_lock_irqsave(&glink->idr_lock, flags);
 idr_remove(&glink->lcids, channel->lcid);
 spin_unlock_irqrestore(&glink->idr_lock, flags);

release_channel:

 kref_put(&channel->refcount, qcom_glink_channel_release);

 kref_put(&channel->refcount, qcom_glink_channel_release);

 return ERR_PTR(-ETIMEDOUT);
}
