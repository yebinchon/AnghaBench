
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ dev_loss_tmo; } ;
struct nvme_fc_rport {TYPE_1__ remoteport; } ;
struct nvme_fc_port_info {scalar_t__ dev_loss_tmo; } ;


 scalar_t__ NVME_FC_DEFAULT_DEV_LOSS_TMO ;

__attribute__((used)) static inline void
__nvme_fc_set_dev_loss_tmo(struct nvme_fc_rport *rport,
   struct nvme_fc_port_info *pinfo)
{
 if (pinfo->dev_loss_tmo)
  rport->remoteport.dev_loss_tmo = pinfo->dev_loss_tmo;
 else
  rport->remoteport.dev_loss_tmo = NVME_FC_DEFAULT_DEV_LOSS_TMO;
}
