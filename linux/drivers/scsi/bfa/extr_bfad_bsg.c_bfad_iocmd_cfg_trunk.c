
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa; } ;
struct TYPE_3__ {int state; } ;
struct bfa_fcport_trunk_s {TYPE_1__ attr; } ;
struct TYPE_4__ {scalar_t__ topology; int trunked; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_2__ cfg; struct bfa_fcport_trunk_s trunk; } ;
struct bfa_bsg_gen_s {int status; } ;


 int BFA_FALSE ;
 struct bfa_fcport_s* BFA_FCPORT_MOD (int *) ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 int BFA_STATUS_DPORT_ERR ;
 int BFA_STATUS_OK ;
 int BFA_STATUS_TOPOLOGY_LOOP ;
 int BFA_TRUE ;
 int BFA_TRUNK_DISABLED ;
 int BFA_TRUNK_OFFLINE ;
 unsigned int IOCMD_TRUNK_DISABLE ;
 unsigned int IOCMD_TRUNK_ENABLE ;
 int bfa_fcport_disable (int *) ;
 int bfa_fcport_enable (int *) ;
 int bfa_fcport_is_disabled (int *) ;
 scalar_t__ bfa_fcport_is_dport (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_cfg_trunk(struct bfad_s *bfad, void *cmd, unsigned int v_cmd)
{
 struct bfa_bsg_gen_s *iocmd = (struct bfa_bsg_gen_s *)cmd;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);
 struct bfa_fcport_trunk_s *trunk = &fcport->trunk;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);

 if (bfa_fcport_is_dport(&bfad->bfa)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  return BFA_STATUS_DPORT_ERR;
 }

 if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) ||
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
  iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
 else {
  if (v_cmd == IOCMD_TRUNK_ENABLE) {
   trunk->attr.state = BFA_TRUNK_OFFLINE;
   bfa_fcport_disable(&bfad->bfa);
   fcport->cfg.trunked = BFA_TRUE;
  } else if (v_cmd == IOCMD_TRUNK_DISABLE) {
   trunk->attr.state = BFA_TRUNK_DISABLED;
   bfa_fcport_disable(&bfad->bfa);
   fcport->cfg.trunked = BFA_FALSE;
  }

  if (!bfa_fcport_is_disabled(&bfad->bfa))
   bfa_fcport_enable(&bfad->bfa);

  iocmd->status = BFA_STATUS_OK;
 }

 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 return 0;
}
