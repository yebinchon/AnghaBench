
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_glink {int dev; int idr_lock; int lcids; } ;
struct glink_channel {int open_ack; } ;


 int EINVAL ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 struct glink_channel* idr_find (int *,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int qcom_glink_rx_open_ack(struct qcom_glink *glink, unsigned int lcid)
{
 struct glink_channel *channel;

 spin_lock(&glink->idr_lock);
 channel = idr_find(&glink->lcids, lcid);
 spin_unlock(&glink->idr_lock);
 if (!channel) {
  dev_err(glink->dev, "Invalid open ack packet\n");
  return -EINVAL;
 }

 complete(&channel->open_ack);

 return 0;
}
