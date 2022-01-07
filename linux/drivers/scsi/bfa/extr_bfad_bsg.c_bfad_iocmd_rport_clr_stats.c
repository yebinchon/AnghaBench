
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_rport_stats_s {int dummy; } ;
struct bfa_rport_s {char stats; } ;
struct bfa_fcs_rport_s {int stats; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_bsg_rport_reset_stats_s {int status; int rpwwn; int pwwn; int vf_id; } ;


 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_LWWN ;
 int BFA_STATUS_UNKNOWN_RWWN ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 struct bfa_rport_s* bfa_fcs_rport_get_halrport (struct bfa_fcs_rport_s*) ;
 struct bfa_fcs_rport_s* bfa_fcs_rport_lookup (struct bfa_fcs_lport_s*,int ) ;
 int memset (char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_rport_clr_stats(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_rport_reset_stats_s *iocmd =
    (struct bfa_bsg_rport_reset_stats_s *)cmd;
 struct bfa_fcs_lport_s *fcs_port;
 struct bfa_fcs_rport_s *fcs_rport;
 struct bfa_rport_s *rport;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->pwwn);
 if (fcs_port == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
  goto out;
 }

 fcs_rport = bfa_fcs_rport_lookup(fcs_port, iocmd->rpwwn);
 if (fcs_rport == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
  goto out;
 }

 memset((char *)&fcs_rport->stats, 0, sizeof(struct bfa_rport_stats_s));
 rport = bfa_fcs_rport_get_halrport(fcs_rport);
 if (rport)
  memset(&rport->stats, 0, sizeof(rport->stats));
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
