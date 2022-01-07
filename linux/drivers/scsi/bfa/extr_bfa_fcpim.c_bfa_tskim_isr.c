
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bfi_tskim_rsp_s {scalar_t__ tsk_status; int tsk_tag; } ;
struct bfi_msg_s {int dummy; } ;
struct bfa_tskim_s {scalar_t__ tsk_tag; scalar_t__ tsk_status; int itnim; } ;
struct bfa_s {int dummy; } ;
struct bfa_fcpim_s {int dummy; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;
 struct bfa_tskim_s* BFA_TSKIM_FROM_TAG (struct bfa_fcpim_s*,scalar_t__) ;
 int BFA_TSKIM_SM_CLEANUP_DONE ;
 int BFA_TSKIM_SM_DONE ;
 int BFA_TSKIM_SM_UTAG ;
 scalar_t__ BFI_TSKIM_STS_ABORTED ;
 scalar_t__ BFI_TSKIM_STS_UTAG ;
 int WARN_ON (int) ;
 scalar_t__ be16_to_cpu (int ) ;
 int bfa_sm_send_event (struct bfa_tskim_s*,int ) ;
 int bfa_stats (int ,int ) ;
 int tm_cleanup_comps ;
 int tm_fw_rsps ;

void
bfa_tskim_isr(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);
 struct bfi_tskim_rsp_s *rsp = (struct bfi_tskim_rsp_s *) m;
 struct bfa_tskim_s *tskim;
 u16 tsk_tag = be16_to_cpu(rsp->tsk_tag);

 tskim = BFA_TSKIM_FROM_TAG(fcpim, tsk_tag);
 WARN_ON(tskim->tsk_tag != tsk_tag);

 tskim->tsk_status = rsp->tsk_status;





 if (rsp->tsk_status == BFI_TSKIM_STS_ABORTED) {
  bfa_stats(tskim->itnim, tm_cleanup_comps);
  bfa_sm_send_event(tskim, BFA_TSKIM_SM_CLEANUP_DONE);
 } else if (rsp->tsk_status == BFI_TSKIM_STS_UTAG) {
  bfa_sm_send_event(tskim, BFA_TSKIM_SM_UTAG);
 } else {
  bfa_stats(tskim->itnim, tm_fw_rsps);
  bfa_sm_send_event(tskim, BFA_TSKIM_SM_DONE);
 }
}
