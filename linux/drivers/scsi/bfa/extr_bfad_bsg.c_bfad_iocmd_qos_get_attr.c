
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa; } ;
struct TYPE_10__ {int qos_bw_op; int total_bb_cr; int state; } ;
struct TYPE_7__ {int low; int med; int high; } ;
struct TYPE_8__ {scalar_t__ topology; TYPE_2__ qos_bw; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_5__ qos_attr; TYPE_3__ cfg; } ;
struct TYPE_6__ {int low; int med; int high; } ;
struct TYPE_9__ {int qos_bw_op; TYPE_1__ qos_bw; int total_bb_cr; int state; } ;
struct bfa_bsg_qos_attr_s {int status; TYPE_4__ attr; } ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (int *) ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_STATUS_OK ;
 int BFA_STATUS_TOPOLOGY_LOOP ;
 int be32_to_cpu (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_qos_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_qos_attr_s *iocmd = (struct bfa_bsg_qos_attr_s *)cmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) &&
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
  iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
 else {
  iocmd->attr.state = fcport->qos_attr.state;
  iocmd->attr.total_bb_cr =
   be32_to_cpu(fcport->qos_attr.total_bb_cr);
  iocmd->attr.qos_bw.high = fcport->cfg.qos_bw.high;
  iocmd->attr.qos_bw.med = fcport->cfg.qos_bw.med;
  iocmd->attr.qos_bw.low = fcport->cfg.qos_bw.low;
  iocmd->attr.qos_bw_op = fcport->qos_attr.qos_bw_op;
  iocmd->status = BFA_STATUS_OK;
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
