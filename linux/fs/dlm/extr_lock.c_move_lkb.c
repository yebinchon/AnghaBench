
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int add_lkb (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int del_lkb (struct dlm_rsb*,struct dlm_lkb*) ;
 int hold_lkb (struct dlm_lkb*) ;
 int unhold_lkb (struct dlm_lkb*) ;

__attribute__((used)) static void move_lkb(struct dlm_rsb *r, struct dlm_lkb *lkb, int sts)
{
 hold_lkb(lkb);
 del_lkb(r, lkb);
 add_lkb(r, lkb, sts);
 unhold_lkb(lkb);
}
