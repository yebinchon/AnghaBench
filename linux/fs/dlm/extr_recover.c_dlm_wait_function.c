
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_ls {int ls_flags; int ls_wait_general; } ;
struct TYPE_2__ {int ci_recover_timer; } ;


 int EINTR ;
 int ETIMEDOUT ;
 int HZ ;
 int LSFL_RCOM_WAIT ;
 TYPE_1__ dlm_config ;
 scalar_t__ dlm_recovery_stopped (struct dlm_ls*) ;
 int log_debug (struct dlm_ls*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait_event_timeout (int ,int,int) ;

int dlm_wait_function(struct dlm_ls *ls, int (*testfn) (struct dlm_ls *ls))
{
 int error = 0;
 int rv;

 while (1) {
  rv = wait_event_timeout(ls->ls_wait_general,
     testfn(ls) || dlm_recovery_stopped(ls),
     dlm_config.ci_recover_timer * HZ);
  if (rv)
   break;
  if (test_bit(LSFL_RCOM_WAIT, &ls->ls_flags)) {
   log_debug(ls, "dlm_wait_function timed out");
   return -ETIMEDOUT;
  }
 }

 if (dlm_recovery_stopped(ls)) {
  log_debug(ls, "dlm_wait_function aborted");
  error = -EINTR;
 }
 return error;
}
