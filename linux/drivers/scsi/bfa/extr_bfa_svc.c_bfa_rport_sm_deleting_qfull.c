
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int rport_tag; int bfa; int reqq_wait; } ;
typedef enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;




 int bfa_reqq_wcancel (int *) ;
 int bfa_rport_free (struct bfa_rport_s*) ;
 int bfa_rport_send_fwdelete (struct bfa_rport_s*) ;
 int bfa_rport_sm_deleting ;
 int bfa_rport_sm_uninit ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_rport_s*,int ) ;
 int bfa_stats (struct bfa_rport_s*,int ) ;
 int bfa_trc (int ,int) ;
 int sm_del_fwrsp ;
 int sm_del_hwf ;

__attribute__((used)) static void
bfa_rport_sm_deleting_qfull(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
 bfa_trc(rp->bfa, rp->rport_tag);
 bfa_trc(rp->bfa, event);

 switch (event) {
 case 128:
  bfa_stats(rp, sm_del_fwrsp);
  bfa_sm_set_state(rp, bfa_rport_sm_deleting);
  bfa_rport_send_fwdelete(rp);
  break;

 case 129:
  bfa_stats(rp, sm_del_hwf);
  bfa_sm_set_state(rp, bfa_rport_sm_uninit);
  bfa_reqq_wcancel(&rp->reqq_wait);
  bfa_rport_free(rp);
  break;

 default:
  bfa_sm_fault(rp->bfa, event);
 }
}
