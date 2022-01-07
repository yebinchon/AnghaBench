
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bfi_msg_s {int dummy; } ;
struct bfi_ioim_rsp_s {int io_tag; } ;
struct bfa_s {int dummy; } ;
struct bfa_ioim_s {scalar_t__ iotag; } ;
struct bfa_fcpim_s {int dummy; } ;


 struct bfa_fcpim_s* BFA_FCPIM (struct bfa_s*) ;
 struct bfa_ioim_s* BFA_IOIM_FROM_TAG (struct bfa_fcpim_s*,scalar_t__) ;
 int BFA_IOIM_SM_COMP_GOOD ;
 int WARN_ON (int) ;
 scalar_t__ be16_to_cpu (int ) ;
 int bfa_ioim_cb_profile_comp (struct bfa_fcpim_s*,struct bfa_ioim_s*) ;
 int bfa_sm_send_event (struct bfa_ioim_s*,int ) ;

void
bfa_ioim_good_comp_isr(struct bfa_s *bfa, struct bfi_msg_s *m)
{
 struct bfa_fcpim_s *fcpim = BFA_FCPIM(bfa);
 struct bfi_ioim_rsp_s *rsp = (struct bfi_ioim_rsp_s *) m;
 struct bfa_ioim_s *ioim;
 u16 iotag;

 iotag = be16_to_cpu(rsp->io_tag);

 ioim = BFA_IOIM_FROM_TAG(fcpim, iotag);
 WARN_ON(ioim->iotag != iotag);

 bfa_ioim_cb_profile_comp(fcpim, ioim);

 bfa_sm_send_event(ioim, BFA_IOIM_SM_COMP_GOOD);
}
