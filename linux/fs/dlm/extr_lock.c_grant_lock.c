
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int _grant_lock (struct dlm_rsb*,struct dlm_lkb*) ;
 int set_lvb_lock (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static void grant_lock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 set_lvb_lock(r, lkb);
 _grant_lock(r, lkb);
}
