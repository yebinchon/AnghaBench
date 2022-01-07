
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_fcs_vport_s {int dummy; } ;
struct bfa_bsg_vport_attr_s {int status; int vport_attr; int vpwwn; int vf_id; } ;


 int BFA_STATUS_OK ;
 int BFA_STATUS_UNKNOWN_VWWN ;
 int bfa_fcs_vport_get_attr (struct bfa_fcs_vport_s*,int *) ;
 struct bfa_fcs_vport_s* bfa_fcs_vport_lookup (int *,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int
bfad_iocmd_vport_get_attr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_fcs_vport_s *fcs_vport;
 struct bfa_bsg_vport_attr_s *iocmd = (struct bfa_bsg_vport_attr_s *)cmd;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_vport = bfa_fcs_vport_lookup(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->vpwwn);
 if (fcs_vport == ((void*)0)) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_VWWN;
  goto out;
 }

 bfa_fcs_vport_get_attr(fcs_vport, &iocmd->vport_attr);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
