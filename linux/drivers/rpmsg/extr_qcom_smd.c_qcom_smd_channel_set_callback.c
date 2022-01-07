
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_endpoint {int cb; } ;
struct qcom_smd_channel {int recv_lock; TYPE_1__* qsept; } ;
typedef int rpmsg_rx_cb_t ;
struct TYPE_2__ {struct rpmsg_endpoint ept; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qcom_smd_channel_set_callback(struct qcom_smd_channel *channel,
       rpmsg_rx_cb_t cb)
{
 struct rpmsg_endpoint *ept = &channel->qsept->ept;
 unsigned long flags;

 spin_lock_irqsave(&channel->recv_lock, flags);
 ept->cb = cb;
 spin_unlock_irqrestore(&channel->recv_lock, flags);
}
