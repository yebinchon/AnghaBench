
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_waitqueue; int res_convertqueue; int res_grantqueue; } ;
struct dlm_lkb {scalar_t__ lkb_grmode; int lkb_exflags; } ;
typedef int int8_t ;


 int DLM_LKF_EXPEDITE ;
 int DLM_LKF_NOORDER ;
 int DLM_LKF_QUECVT ;
 scalar_t__ DLM_LOCK_IV ;
 scalar_t__ first_in_list (struct dlm_lkb*,int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ queue_conflict (int *,struct dlm_lkb*) ;

__attribute__((used)) static int _can_be_granted(struct dlm_rsb *r, struct dlm_lkb *lkb, int now,
      int recover)
{
 int8_t conv = (lkb->lkb_grmode != DLM_LOCK_IV);
 if (lkb->lkb_exflags & DLM_LKF_EXPEDITE)
  return 1;






 if (queue_conflict(&r->res_grantqueue, lkb))
  return 0;







 if (queue_conflict(&r->res_convertqueue, lkb))
  return 0;
 if (conv && recover)
  return 1;
 if (now && conv && !(lkb->lkb_exflags & DLM_LKF_QUECVT))
  return 1;






 if (now && conv && (lkb->lkb_exflags & DLM_LKF_QUECVT)) {
  if (list_empty(&r->res_convertqueue))
   return 1;
  else
   return 0;
 }






 if (lkb->lkb_exflags & DLM_LKF_NOORDER)
  return 1;







 if (!now && conv && first_in_list(lkb, &r->res_convertqueue))
  return 1;
 if (now && !conv && list_empty(&r->res_convertqueue) &&
     list_empty(&r->res_waitqueue))
  return 1;
 if (!now && !conv && list_empty(&r->res_convertqueue) &&
     first_in_list(lkb, &r->res_waitqueue))
  return 1;

 return 0;
}
