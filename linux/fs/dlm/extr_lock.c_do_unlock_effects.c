
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int grant_pending_locks (struct dlm_rsb*,int *) ;

__attribute__((used)) static void do_unlock_effects(struct dlm_rsb *r, struct dlm_lkb *lkb,
         int error)
{
 grant_pending_locks(r, ((void*)0));
}
