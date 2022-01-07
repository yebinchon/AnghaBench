
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_rsb {scalar_t__ res_lvbseq; scalar_t__ res_lvbptr; TYPE_1__* res_ls; } ;
struct dlm_lkb {int lkb_grmode; int lkb_rqmode; int lkb_exflags; int lkb_sbflags; scalar_t__ lkb_lvbseq; scalar_t__ lkb_lvbptr; } ;
struct TYPE_2__ {int ls_lvblen; } ;


 int DLM_LKF_IVVALBLK ;
 int DLM_LKF_VALBLK ;
 int DLM_SBF_VALNOTVALID ;
 int RSB_VALNOTVALID ;
 scalar_t__ dlm_allocate_lvb (TYPE_1__*) ;
 int** dlm_lvb_operations ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int rsb_clear_flag (struct dlm_rsb*,int ) ;
 scalar_t__ rsb_flag (struct dlm_rsb*,int ) ;
 int rsb_set_flag (struct dlm_rsb*,int ) ;

__attribute__((used)) static void set_lvb_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int b, len = r->res_ls->ls_lvblen;





 b = dlm_lvb_operations[lkb->lkb_grmode + 1][lkb->lkb_rqmode + 1];

 if (b == 1) {
  if (!lkb->lkb_lvbptr)
   return;

  if (!(lkb->lkb_exflags & DLM_LKF_VALBLK))
   return;

  if (!r->res_lvbptr)
   return;

  memcpy(lkb->lkb_lvbptr, r->res_lvbptr, len);
  lkb->lkb_lvbseq = r->res_lvbseq;

 } else if (b == 0) {
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

  memcpy(r->res_lvbptr, lkb->lkb_lvbptr, len);
  r->res_lvbseq++;
  lkb->lkb_lvbseq = r->res_lvbseq;
  rsb_clear_flag(r, RSB_VALNOTVALID);
 }

 if (rsb_flag(r, RSB_VALNOTVALID))
  lkb->lkb_sbflags |= DLM_SBF_VALNOTVALID;
}
