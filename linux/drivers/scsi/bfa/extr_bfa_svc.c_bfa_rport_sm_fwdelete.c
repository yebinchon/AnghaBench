
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int rport_tag; int bfa; } ;
typedef enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;





 int bfa_rport_offline_cb (struct bfa_rport_s*) ;
 int bfa_rport_sm_deleting ;
 int bfa_rport_sm_iocdisable ;
 int bfa_rport_sm_offline ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_rport_s*,int ) ;
 int bfa_stats (struct bfa_rport_s*,int ) ;
 int bfa_trc (int ,int) ;
 int sm_fwd_del ;
 int sm_fwd_hwf ;
 int sm_fwd_rsp ;
 int sm_fwd_unexp ;

__attribute__((used)) static void
bfa_rport_sm_fwdelete(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
 bfa_trc(rp->bfa, rp->rport_tag);
 bfa_trc(rp->bfa, event);

 switch (event) {
 case 129:
  bfa_stats(rp, sm_fwd_rsp);
  bfa_sm_set_state(rp, bfa_rport_sm_offline);
  bfa_rport_offline_cb(rp);
  break;

 case 130:
  bfa_stats(rp, sm_fwd_del);
  bfa_sm_set_state(rp, bfa_rport_sm_deleting);
  break;

 case 128:
  bfa_stats(rp, sm_fwd_hwf);
  bfa_sm_set_state(rp, bfa_rport_sm_iocdisable);
  bfa_rport_offline_cb(rp);
  break;

 default:
  bfa_stats(rp, sm_fwd_unexp);
  bfa_sm_fault(rp->bfa, event);
 }
}
