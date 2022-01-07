
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_message {scalar_t__ m_type; } ;
struct dlm_lkb {int lkb_exflags; int lkb_rqmode; int lkb_id; } ;


 int DLM_LKF_ALTCW ;
 int DLM_LKF_ALTPR ;
 int DLM_LOCK_CW ;
 int DLM_LOCK_PR ;
 scalar_t__ DLM_MSG_GRANT ;
 scalar_t__ DLM_MSG_REQUEST_REPLY ;
 int dlm_print_lkb (struct dlm_lkb*) ;
 int log_print (char*,int,...) ;

__attribute__((used)) static void munge_altmode(struct dlm_lkb *lkb, struct dlm_message *ms)
{
 if (ms->m_type != DLM_MSG_REQUEST_REPLY &&
     ms->m_type != DLM_MSG_GRANT) {
  log_print("munge_altmode %x invalid reply type %d",
     lkb->lkb_id, ms->m_type);
  return;
 }

 if (lkb->lkb_exflags & DLM_LKF_ALTPR)
  lkb->lkb_rqmode = DLM_LOCK_PR;
 else if (lkb->lkb_exflags & DLM_LKF_ALTCW)
  lkb->lkb_rqmode = DLM_LOCK_CW;
 else {
  log_print("munge_altmode invalid exflags %x", lkb->lkb_exflags);
  dlm_print_lkb(lkb);
 }
}
