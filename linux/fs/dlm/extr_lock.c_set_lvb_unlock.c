
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {int res_lvbseq; TYPE_1__* res_ls; scalar_t__ res_lvbptr; } ;
struct dlm_lkb {scalar_t__ lkb_grmode; int lkb_exflags; int lkb_lvbptr; } ;
struct TYPE_2__ {int ls_lvblen; } ;


 int DLM_LKF_IVVALBLK ;
 int DLM_LKF_VALBLK ;
 scalar_t__ DLM_LOCK_PW ;
 int RSB_VALNOTVALID ;
 scalar_t__ dlm_allocate_lvb (TYPE_1__*) ;
 int memcpy (scalar_t__,int ,int ) ;
 int rsb_clear_flag (struct dlm_rsb*,int ) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;

__attribute__((used)) static void set_lvb_unlock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 if (lkb->lkb_grmode < DLM_LOCK_PW)
  return;

 if (lkb->lkb_exflags & DLM_LKF_IVVALBLK) {
  rsb_set_flag(r, RSB_VALNOTVALID);
  return;
 }

 if (!lkb->lkb_lvbptr)
  return;

 if (!(lkb->lkb_exflags & DLM_LKF_VALBLK))
  return;

 if (!r->res_lvbptr)
  r->res_lvbptr = dlm_allocate_lvb(r->res_ls);

 if (!r->res_lvbptr)
  return;

 memcpy(r->res_lvbptr, lkb->lkb_lvbptr, r->res_ls->ls_lvblen);
 r->res_lvbseq++;
 rsb_clear_flag(r, RSB_VALNOTVALID);
}
