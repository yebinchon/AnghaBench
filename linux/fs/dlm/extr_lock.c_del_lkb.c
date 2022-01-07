
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int lkb_statequeue; scalar_t__ lkb_status; } ;


 int list_del (int *) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static void del_lkb(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 lkb->lkb_status = 0;
 list_del(&lkb->lkb_statequeue);
 unhold_lkb(lkb);
}
