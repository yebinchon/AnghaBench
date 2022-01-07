
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int lkb_grmode; } ;


 int DLM_LOCK_IV ;
 int del_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static void _remove_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 del_lkb(r, lkb);
 lkb->lkb_grmode = DLM_LOCK_IV;


 unhold_lkb(lkb);
}
