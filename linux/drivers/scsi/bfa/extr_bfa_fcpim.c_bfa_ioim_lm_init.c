
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_s {int dummy; } ;
struct bfa_lun_mask_s {int rp_tag; int lp_tag; int ua; } ;


 int BFA_IOIM_LM_UA_RESET ;
 int BFA_LP_TAG_INVALID ;
 scalar_t__ BFA_LUNMASK_MINCFG ;
 int BFA_RPORT_TAG_INVALID ;
 int MAX_LUN_MASK_CFG ;
 struct bfa_lun_mask_s* bfa_get_lun_mask_list (struct bfa_s*) ;
 scalar_t__ bfa_get_lun_mask_status (struct bfa_s*) ;

void
bfa_ioim_lm_init(struct bfa_s *bfa)
{
 struct bfa_lun_mask_s *lunm_list;
 int i;

 if (bfa_get_lun_mask_status(bfa) == BFA_LUNMASK_MINCFG)
  return;

 lunm_list = bfa_get_lun_mask_list(bfa);
 for (i = 0; i < MAX_LUN_MASK_CFG; i++) {
  lunm_list[i].ua = BFA_IOIM_LM_UA_RESET;
  lunm_list[i].lp_tag = BFA_LP_TAG_INVALID;
  lunm_list[i].rp_tag = BFA_RPORT_TAG_INVALID;
 }
}
