
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpmsg_device {int ept; } ;
struct qcom_smd_endpoint {struct qcom_smd_channel* qsch; } ;
struct qcom_smd_channel {TYPE_1__* edge; int recv_lock; } ;
struct TYPE_2__ {int state_work; } ;


 int qcom_smd_channel_intr (struct qcom_smd_channel*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qcom_smd_endpoint* to_smd_endpoint (int ) ;

__attribute__((used)) static int qcom_smd_announce_create(struct rpmsg_device *rpdev)
{
 struct qcom_smd_endpoint *qept = to_smd_endpoint(rpdev->ept);
 struct qcom_smd_channel *channel = qept->qsch;
 unsigned long flags;
 bool kick_state;

 spin_lock_irqsave(&channel->recv_lock, flags);
 kick_state = qcom_smd_channel_intr(channel);
 spin_unlock_irqrestore(&channel->recv_lock, flags);

 if (kick_state)
  schedule_work(&channel->edge->state_work);

 return 0;
}
