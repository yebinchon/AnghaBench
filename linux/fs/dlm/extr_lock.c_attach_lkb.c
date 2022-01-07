
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {struct dlm_rsb* lkb_resource; } ;


 int hold_rsb (struct dlm_rsb*) ;

__attribute__((used)) static void attach_lkb(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 hold_rsb(r);
 lkb->lkb_resource = r;
}
