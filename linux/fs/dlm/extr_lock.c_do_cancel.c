
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int dummy; } ;
struct dlm_lkb {int dummy; } ;


 int DLM_ECANCEL ;
 int queue_cast (struct dlm_rsb*,struct dlm_lkb*,int) ;
 int revert_lock (struct dlm_rsb*,struct dlm_lkb*) ;

__attribute__((used)) static int do_cancel(struct dlm_rsb *r, struct dlm_lkb *lkb)
{
 int error;

 error = revert_lock(r, lkb);
 if (error) {
  queue_cast(r, lkb, -DLM_ECANCEL);
  return -DLM_ECANCEL;
 }
 return 0;
}
