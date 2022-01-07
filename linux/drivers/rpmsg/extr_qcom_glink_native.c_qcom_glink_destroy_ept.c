
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {int dummy; } ;
struct qcom_glink {int dummy; } ;
struct TYPE_2__ {int * cb; } ;
struct glink_channel {int * rpdev; int recv_lock; TYPE_1__ ept; struct qcom_glink* glink; } ;


 int qcom_glink_send_close_req (struct qcom_glink*,struct glink_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct glink_channel* to_glink_channel (struct rpmsg_endpoint*) ;

__attribute__((used)) static void qcom_glink_destroy_ept(struct rpmsg_endpoint *ept)
{
 struct glink_channel *channel = to_glink_channel(ept);
 struct qcom_glink *glink = channel->glink;
 unsigned long flags;

 spin_lock_irqsave(&channel->recv_lock, flags);
 channel->ept.cb = ((void*)0);
 spin_unlock_irqrestore(&channel->recv_lock, flags);


 channel->rpdev = ((void*)0);

 qcom_glink_send_close_req(glink, channel);
}
