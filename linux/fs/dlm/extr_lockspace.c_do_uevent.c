
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_uevent_result; int ls_flags; int ls_uevent_wait; int ls_kobj; } ;


 int KOBJ_OFFLINE ;
 int KOBJ_ONLINE ;
 int LSFL_UEVENT_WAIT ;
 int kobject_uevent (int *,int ) ;
 int log_error (struct dlm_ls*,char*,char*,int,int) ;
 int log_rinfo (struct dlm_ls*,char*,...) ;
 int test_and_clear_bit (int ,int *) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int do_uevent(struct dlm_ls *ls, int in)
{
 int error;

 if (in)
  kobject_uevent(&ls->ls_kobj, KOBJ_ONLINE);
 else
  kobject_uevent(&ls->ls_kobj, KOBJ_OFFLINE);

 log_rinfo(ls, "%s the lockspace group...", in ? "joining" : "leaving");




 error = wait_event_interruptible(ls->ls_uevent_wait,
   test_and_clear_bit(LSFL_UEVENT_WAIT, &ls->ls_flags));

 log_rinfo(ls, "group event done %d %d", error, ls->ls_uevent_result);

 if (error)
  goto out;

 error = ls->ls_uevent_result;
 out:
 if (error)
  log_error(ls, "group %s failed %d %d", in ? "join" : "leave",
     error, ls->ls_uevent_result);
 return error;
}
