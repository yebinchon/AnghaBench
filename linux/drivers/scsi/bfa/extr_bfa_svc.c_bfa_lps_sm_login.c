
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct bfa_lps_s {int bfa_tag; int fport; int lp_pid; TYPE_1__* bfa; int fdisc; int status; } ;
typedef enum bfa_lps_event { ____Placeholder_bfa_lps_event } bfa_lps_event ;
struct TYPE_3__ {int plog; } ;






 int BFA_PL_EID_LOGIN ;
 int BFA_PL_MID_LPS ;
 int BFA_STATUS_OK ;
 int bfa_lps_login_comp (struct bfa_lps_s*) ;
 int bfa_lps_sm_init ;
 int bfa_lps_sm_online ;
 int bfa_plog_str (int ,int ,int ,int ,char*) ;
 int bfa_sm_fault (TYPE_1__*,int) ;
 int bfa_sm_send_event (struct bfa_lps_s*,int) ;
 int bfa_sm_set_state (struct bfa_lps_s*,int ) ;
 int bfa_trc (TYPE_1__*,int) ;

__attribute__((used)) static void
bfa_lps_sm_login(struct bfa_lps_s *lps, enum bfa_lps_event event)
{
 bfa_trc(lps->bfa, lps->bfa_tag);
 bfa_trc(lps->bfa, event);

 switch (event) {
 case 130:
  if (lps->status == BFA_STATUS_OK) {
   bfa_sm_set_state(lps, bfa_lps_sm_online);
   if (lps->fdisc)
    bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
     BFA_PL_EID_LOGIN, 0, "FDISC Accept");
   else
    bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
     BFA_PL_EID_LOGIN, 0, "FLOGI Accept");

   bfa_trc(lps->bfa, lps->fport);
   bfa_trc(lps->bfa, lps->lp_pid);

   if (!lps->fport && lps->lp_pid)
    bfa_sm_send_event(lps, 128);
  } else {
   bfa_sm_set_state(lps, bfa_lps_sm_init);
   if (lps->fdisc)
    bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
     BFA_PL_EID_LOGIN, 0,
     "FDISC Fail (RJT or timeout)");
   else
    bfa_plog_str(lps->bfa->plog, BFA_PL_MID_LPS,
     BFA_PL_EID_LOGIN, 0,
     "FLOGI Fail (RJT or timeout)");
  }
  bfa_lps_login_comp(lps);
  break;

 case 129:
 case 131:
  bfa_sm_set_state(lps, bfa_lps_sm_init);
  break;

 case 128:
  bfa_trc(lps->bfa, lps->fport);
  bfa_trc(lps->bfa, lps->lp_pid);
  break;

 default:
  bfa_sm_fault(lps->bfa, event);
 }
}
