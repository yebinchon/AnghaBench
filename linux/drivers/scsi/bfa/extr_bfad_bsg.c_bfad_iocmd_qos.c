
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ioc; } ;
struct bfad_s {int bfad_lock; TYPE_3__ bfa; } ;
struct TYPE_4__ {int low; int med; int high; } ;
struct TYPE_5__ {scalar_t__ topology; TYPE_1__ qos_bw; int qos_enabled; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_2__ cfg; } ;
struct bfa_bsg_gen_s {int status; } ;


 int BFA_FALSE ;
 struct bfa_fcport_s* BFA_FCPORT_MOD (TYPE_3__*) ;
 scalar_t__ BFA_IOC_TYPE_FC ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_QOS_BW_HIGH ;
 int BFA_QOS_BW_LOW ;
 int BFA_QOS_BW_MED ;
 int BFA_STATUS_TOPOLOGY_LOOP ;
 int BFA_TRUE ;
 unsigned int IOCMD_QOS_DISABLE ;
 unsigned int IOCMD_QOS_ENABLE ;
 scalar_t__ bfa_ioc_get_type (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_qos(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if (bfa_ioc_get_type(&bfad->bfa.ioc) == BFA_IOC_TYPE_FC) {
  if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) &&
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
   iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
  else {
   if (v_cmd == IOCMD_QOS_ENABLE)
    fcport->cfg.qos_enabled = BFA_TRUE;
   else if (v_cmd == IOCMD_QOS_DISABLE) {
    fcport->cfg.qos_enabled = BFA_FALSE;
    fcport->cfg.qos_bw.high = BFA_QOS_BW_HIGH;
    fcport->cfg.qos_bw.med = BFA_QOS_BW_MED;
    fcport->cfg.qos_bw.low = BFA_QOS_BW_LOW;
   }
  }
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
