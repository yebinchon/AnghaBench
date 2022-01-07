
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {scalar_t__ lkb_rqmode; scalar_t__ lkb_grmode; int lkb_exflags; int lkb_sbflags; int lkb_id; } ;
typedef scalar_t__ int8_t ;


 int DLM_LKF_ALTCW ;
 int DLM_LKF_ALTPR ;
 int DLM_LKF_CONVDEADLK ;
 scalar_t__ DLM_LOCK_CW ;
 scalar_t__ DLM_LOCK_IV ;
 scalar_t__ DLM_LOCK_NL ;
 scalar_t__ DLM_LOCK_PR ;
 int DLM_SBF_ALTMODE ;
 int DLM_SBF_DEMOTED ;
 int EDEADLK ;
 int _can_be_granted (struct dlm_rsb*,struct dlm_lkb*,int,int) ;
 scalar_t__ can_be_queued (struct dlm_lkb*) ;
 scalar_t__ conversion_deadlock_detect (struct dlm_rsb*,struct dlm_lkb*) ;
 int dlm_dump_rsb (struct dlm_rsb*) ;
 int log_print (char*,int ,int) ;

__attribute__((used)) static int can_be_granted(struct dlm_rsb *r, struct dlm_lkb *lkb, int now,
     int recover, int *err)
{
 int rv;
 int8_t alt = 0, rqmode = lkb->lkb_rqmode;
 int8_t is_convert = (lkb->lkb_grmode != DLM_LOCK_IV);

 if (err)
  *err = 0;

 rv = _can_be_granted(r, lkb, now, recover);
 if (rv)
  goto out;







 if (is_convert && can_be_queued(lkb) &&
     conversion_deadlock_detect(r, lkb)) {
  if (lkb->lkb_exflags & DLM_LKF_CONVDEADLK) {
   lkb->lkb_grmode = DLM_LOCK_NL;
   lkb->lkb_sbflags |= DLM_SBF_DEMOTED;
  } else if (err) {
   *err = -EDEADLK;
  } else {
   log_print("can_be_granted deadlock %x now %d",
      lkb->lkb_id, now);
   dlm_dump_rsb(r);
  }
  goto out;
 }
 if (rqmode != DLM_LOCK_PR && (lkb->lkb_exflags & DLM_LKF_ALTPR))
  alt = DLM_LOCK_PR;
 else if (rqmode != DLM_LOCK_CW && (lkb->lkb_exflags & DLM_LKF_ALTCW))
  alt = DLM_LOCK_CW;

 if (alt) {
  lkb->lkb_rqmode = alt;
  rv = _can_be_granted(r, lkb, now, 0);
  if (rv)
   lkb->lkb_sbflags |= DLM_SBF_ALTMODE;
  else
   lkb->lkb_rqmode = rqmode;
 }
 out:
 return rv;
}
