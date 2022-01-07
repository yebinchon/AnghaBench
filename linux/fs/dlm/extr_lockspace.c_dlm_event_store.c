
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_uevent_wait; int ls_flags; int ls_uevent_result; } ;
typedef int ssize_t ;


 int LSFL_UEVENT_WAIT ;
 int kstrtoint (char const*,int ,int *) ;
 int set_bit (int ,int *) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t dlm_event_store(struct dlm_ls *ls, const char *buf, size_t len)
{
 int rc = kstrtoint(buf, 0, &ls->ls_uevent_result);

 if (rc)
  return rc;
 set_bit(LSFL_UEVENT_WAIT, &ls->ls_flags);
 wake_up(&ls->ls_uevent_wait);
 return len;
}
