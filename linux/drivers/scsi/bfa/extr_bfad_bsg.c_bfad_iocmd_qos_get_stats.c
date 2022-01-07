
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ioc; } ;
struct bfad_s {int bfad_lock; TYPE_2__ bfa; } ;
struct bfad_hal_comp {scalar_t__ status; int comp; } ;
struct TYPE_4__ {scalar_t__ topology; } ;
struct bfa_fcport_s {scalar_t__ topology; TYPE_1__ cfg; } ;
struct bfa_cb_pending_q_s {int dummy; } ;
struct bfa_bsg_fcport_stats_s {scalar_t__ status; int stats; } ;
typedef int bfa_cb_cbfn_t ;


 struct bfa_fcport_s* BFA_FCPORT_MOD (TYPE_2__*) ;
 scalar_t__ BFA_PORT_TOPOLOGY_LOOP ;
 scalar_t__ BFA_STATUS_OK ;
 scalar_t__ BFA_STATUS_TOPOLOGY_LOOP ;
 int WARN_ON (int) ;
 scalar_t__ bfa_fcport_get_stats (TYPE_2__*,struct bfa_cb_pending_q_s*) ;
 int bfa_ioc_get_fcmode (int *) ;
 int bfa_pending_q_init (struct bfa_cb_pending_q_s*,int ,struct bfad_hal_comp*,int *) ;
 int bfa_trc (struct bfad_s*,scalar_t__) ;
 scalar_t__ bfad_hcb_comp ;
 int init_completion (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wait_for_completion (int *) ;

int
bfad_iocmd_qos_get_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_fcport_stats_s *iocmd =
    (struct bfa_bsg_fcport_stats_s *)cmd;
 struct bfad_hal_comp fcomp;
 unsigned long flags;
 struct bfa_cb_pending_q_s cb_qe;
 struct bfa_fcport_s *fcport = BFA_FCPORT_MOD(&bfad->bfa);

 init_completion(&fcomp.comp);
 bfa_pending_q_init(&cb_qe, (bfa_cb_cbfn_t)bfad_hcb_comp,
      &fcomp, &iocmd->stats);

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 WARN_ON(!bfa_ioc_get_fcmode(&bfad->bfa.ioc));
 if ((fcport->cfg.topology == BFA_PORT_TOPOLOGY_LOOP) &&
  (fcport->topology == BFA_PORT_TOPOLOGY_LOOP))
  iocmd->status = BFA_STATUS_TOPOLOGY_LOOP;
 else
  iocmd->status = bfa_fcport_get_stats(&bfad->bfa, &cb_qe);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 if (iocmd->status != BFA_STATUS_OK) {
  bfa_trc(bfad, iocmd->status);
  goto out;
 }
 wait_for_completion(&fcomp.comp);
 iocmd->status = fcomp.status;
out:
 return 0;
}
