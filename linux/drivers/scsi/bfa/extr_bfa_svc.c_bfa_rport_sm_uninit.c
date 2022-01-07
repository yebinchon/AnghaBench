
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_rport_s {int rport_tag; int bfa; } ;
typedef enum bfa_rport_event { ____Placeholder_bfa_rport_event } bfa_rport_event ;



 int bfa_rport_sm_created ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_rport_s*,int ) ;
 int bfa_stats (struct bfa_rport_s*,int ) ;
 int bfa_trc (int ,int) ;
 int sm_un_cr ;
 int sm_un_unexp ;

__attribute__((used)) static void
bfa_rport_sm_uninit(struct bfa_rport_s *rp, enum bfa_rport_event event)
{
 bfa_trc(rp->bfa, rp->rport_tag);
 bfa_trc(rp->bfa, event);

 switch (event) {
 case 128:
  bfa_stats(rp, sm_un_cr);
  bfa_sm_set_state(rp, bfa_rport_sm_created);
  break;

 default:
  bfa_stats(rp, sm_un_unexp);
  bfa_sm_fault(rp->bfa, event);
 }
}
