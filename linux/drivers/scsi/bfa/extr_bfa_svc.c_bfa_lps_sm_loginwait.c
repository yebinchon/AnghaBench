
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_lps_s {int bfa_tag; int bfa; int wqe; } ;
typedef enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;






 int bfa_lps_send_login (struct bfa_lps_s*) ;
 int bfa_lps_sm_init ;
 int bfa_lps_sm_login ;
 int bfa_reqq_wcancel (int *) ;
 int bfa_sm_fault (int ,int) ;
 int bfa_sm_set_state (struct bfa_lps_s*,int ) ;
 int bfa_trc (int ,int) ;

__attribute__((used)) static void
bfa_lps_sm_loginwait(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
 bfa_trc(lps->bfa, lps->bfa_tag);
 bfa_trc(lps->bfa, event);

 switch (event) {
 case 129:
  bfa_sm_set_state(lps, bfa_lps_sm_login);
  bfa_lps_send_login(lps);
  break;

 case 130:
 case 131:
  bfa_sm_set_state(lps, bfa_lps_sm_init);
  bfa_reqq_wcancel(&lps->wqe);
  break;

 case 128:





  break;

 default:
  bfa_sm_fault(lps->bfa, event);
 }
}
