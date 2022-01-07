
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmefc_fcp_req {struct nvme_private* private; } ;
struct nvme_private {int abort_work; int cmd_lock; TYPE_1__* sp; } ;
struct nvme_fc_remote_port {int dummy; } ;
struct nvme_fc_local_port {int dummy; } ;
struct TYPE_2__ {int cmd_kref; } ;


 int INIT_WORK (int *,int ) ;
 int kref_get_unless_zero (int *) ;
 int qla_nvme_abort_work ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qla_nvme_fcp_abort(struct nvme_fc_local_port *lport,
    struct nvme_fc_remote_port *rport, void *hw_queue_handle,
    struct nvmefc_fcp_req *fd)
{
 struct nvme_private *priv = fd->private;
 unsigned long flags;

 spin_lock_irqsave(&priv->cmd_lock, flags);
 if (!priv->sp) {
  spin_unlock_irqrestore(&priv->cmd_lock, flags);
  return;
 }
 if (!kref_get_unless_zero(&priv->sp->cmd_kref)) {
  spin_unlock_irqrestore(&priv->cmd_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&priv->cmd_lock, flags);

 INIT_WORK(&priv->abort_work, qla_nvme_abort_work);
 schedule_work(&priv->abort_work);
}
