
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wwn_t ;
struct bfa_s {int dummy; } ;
struct TYPE_3__ {int lp_tag; } ;
struct bfa_rport_s {int lun_mask; TYPE_1__ rport_info; scalar_t__ rport_drv; } ;
struct bfa_lps_mod_s {int dummy; } ;
struct bfa_fcs_rport_s {int pwwn; } ;
struct TYPE_4__ {int lun_mask; int pwwn; } ;


 int BFA_FALSE ;
 TYPE_2__* BFA_LPS_FROM_TAG (struct bfa_lps_mod_s*,int ) ;
 struct bfa_lps_mod_s* BFA_LPS_MOD (struct bfa_s*) ;
 int BFA_LP_TAG_INVALID ;
 int BFA_RPORT_TAG_INVALID ;
 int bfa_fcpim_lunmask_rp_update (struct bfa_s*,int ,int ,int ,int ) ;

void
bfa_rport_unset_lunmask(struct bfa_s *bfa, struct bfa_rport_s *rp)
{
 struct bfa_lps_mod_s *lps_mod = BFA_LPS_MOD(bfa);
 wwn_t lp_wwn, rp_wwn;

 rp_wwn = ((struct bfa_fcs_rport_s *)rp->rport_drv)->pwwn;
 lp_wwn = (BFA_LPS_FROM_TAG(lps_mod, rp->rport_info.lp_tag))->pwwn;

 BFA_LPS_FROM_TAG(lps_mod, rp->rport_info.lp_tag)->lun_mask =
    rp->lun_mask = BFA_FALSE;
 bfa_fcpim_lunmask_rp_update(bfa, lp_wwn, rp_wwn,
   BFA_RPORT_TAG_INVALID, BFA_LP_TAG_INVALID);
}
