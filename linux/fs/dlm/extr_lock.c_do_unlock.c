
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_EUNLOCK ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int remove_lock (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int do_unlock(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 remove_lock(r, lkb);
 queue_cast(r, lkb, -DLM_EUNLOCK);
 return -DLM_EUNLOCK;
}
