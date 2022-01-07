
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bfa_lps_s {int bfa_tag; TYPE_1__* bfa; int fdisc; int wqe; int reqq; } ;
typedef enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_5__ {int plog; } ;
 int BFA_PL_EID_LOGIN ;
 int BFA_PL_MID_LPS ;
 int bfa_lps_free (struct bfa_lps_s*) ;
 int bfa_lps_logout_comp (struct bfa_lps_s*) ;
 int bfa_lps_send_login (struct bfa_lps_s*) ;
 int bfa_lps_sm_login ;
 int bfa_lps_sm_loginwait ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_reqq_full (TYPE_1__*,int ) ;
 int bfa_reqq_wait (TYPE_1__*,int ,int *) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_set_state (struct bfa_lps_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_lps_sm_init(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
 bfa_trc(lps->bfa, lps->bfa_tag);
 bfa_trc(lps->bfa, event);

 switch (event) {
 case 132:
  if (bfa_reqq_full(lps->bfa, lps->reqq)) {
   bfa_sm_set_state(lps, bfa_lps_sm_loginwait);
   bfa_reqq_wait(lps->bfa, lps->reqq, &lps->wqe);
  } else {
   bfa_sm_set_state(lps, bfa_lps_sm_login);
   bfa_lps_send_login(lps);
  }

  if (lps->fdisc)
   bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
    BFA_PL_EID_LOGIN, 0, "FDISC Request");
  else
   bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
    BFA_PL_EID_LOGIN, 0, "FLOGI Request");
  break;

 case 131:
  bfa_lps_logout_comp(lps);
  break;

 case 134:
  bfa_lps_free(lps);
  break;

 case 129:
 case 130:
  break;

 case 133:





  break;
 case 128:




  break;

 default:
  bfa_sm_fault(lps->bfa, event);
 }
}
