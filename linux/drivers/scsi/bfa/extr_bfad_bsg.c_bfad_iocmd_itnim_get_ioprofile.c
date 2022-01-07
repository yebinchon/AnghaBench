
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_itnim_s {int dummy; } ;
struct bfa_bsg_itnim_ioprofile_s {int ioprofile; int status; int rpwwn; int lpwwn; int vf_id; } ;


 int BFA_STATUS_UNKNOWN_LWWN ;
 int BFA_STATUS_UNKNOWN_RWWN ;
 int bfa_fcs_itnim_get_halitn (struct bfa_fcs_itnim_s*) ;
 struct bfa_fcs_itnim_s* bfa_fcs_itnim_lookup (struct bfa_fcs_lport_s*,int ) ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 int bfa_itnim_get_ioprofile (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bfad_iocmd_itnim_get_ioprofile(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_itnim_ioprofile_s *iocmd =
    (struct bfa_bsg_itnim_ioprofile_s *)cmd;
 struct bfa_fcs_lport_s *fcs_port;
 struct bfa_fcs_itnim_s *itnim;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->lpwwn);
 if (!fcs_port)
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
 else {
  itnim = bfa_fcs_itnim_lookup(fcs_port, iocmd->rpwwn);
  if (itnim == ((void*)0))
   iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
  else
   iocmd->status = bfa_itnim_get_ioprofile(
      bfa_fcs_itnim_get_halitn(itnim),
      &iocmd->ioprofile);
 }
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);
 return 0;
}
