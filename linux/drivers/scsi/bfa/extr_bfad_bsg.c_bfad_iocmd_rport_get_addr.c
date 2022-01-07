
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bfad_s {int bfad_lock; int bfa_fcs; } ;
struct bfad_itnim_s {int scsi_tgt_id; TYPE_2__* im_port; } ;
struct bfa_fcs_lport_s {int dummy; } ;
struct bfa_fcs_itnim_s {struct bfad_itnim_s* itnim_drv; } ;
struct bfa_bsg_rport_scsi_addr_s {void* status; scalar_t__ lun; scalar_t__ bus; int target; int host; int rpwwn; int pwwn; int vf_id; } ;
struct TYPE_4__ {TYPE_1__* shost; } ;
struct TYPE_3__ {int host_no; } ;


 void* BFA_STATUS_OK ;
 void* BFA_STATUS_UNKNOWN_LWWN ;
 void* BFA_STATUS_UNKNOWN_RWWN ;
 struct bfa_fcs_itnim_s* bfa_fcs_itnim_lookup (struct bfa_fcs_lport_s*,int ) ;
 struct bfa_fcs_lport_s* bfa_fcs_lookup_port (int *,int ,int ) ;
 int bfa_trc (struct bfad_s*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
bfad_iocmd_rport_get_addr(struct bfad_s *bfad, void *cmd)
{
 struct bfa_bsg_rport_scsi_addr_s *iocmd =
   (struct bfa_bsg_rport_scsi_addr_s *)cmd;
 struct bfa_fcs_lport_s *fcs_port;
 struct bfa_fcs_itnim_s *fcs_itnim;
 struct bfad_itnim_s *drv_itnim;
 unsigned long flags;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 fcs_port = bfa_fcs_lookup_port(&bfad->bfa_fcs,
    iocmd->vf_id, iocmd->pwwn);
 if (fcs_port == ((void*)0)) {
  bfa_trc(bfad, 0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_LWWN;
  goto out;
 }

 fcs_itnim = bfa_fcs_itnim_lookup(fcs_port, iocmd->rpwwn);
 if (fcs_itnim == ((void*)0)) {
  bfa_trc(bfad, 0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
  goto out;
 }

 drv_itnim = fcs_itnim->itnim_drv;

 if (drv_itnim && drv_itnim->im_port)
  iocmd->host = drv_itnim->im_port->shost->host_no;
 else {
  bfa_trc(bfad, 0);
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  iocmd->status = BFA_STATUS_UNKNOWN_RWWN;
  goto out;
 }

 iocmd->target = drv_itnim->scsi_tgt_id;
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 iocmd->bus = 0;
 iocmd->lun = 0;
 iocmd->status = BFA_STATUS_OK;
out:
 return 0;
}
