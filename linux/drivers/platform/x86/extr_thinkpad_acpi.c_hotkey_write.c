
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int hotkey; } ;


 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 int ERESTARTSYS ;
 int hotkey_all_mask ;
 int hotkey_enabledisable_warn (int) ;
 int hotkey_mutex ;
 int hotkey_reserved_mask ;
 int hotkey_source_mask ;
 int hotkey_user_mask ;
 int hotkey_user_mask_set (int) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 char* next_cmd (char**) ;
 int sscanf (char*,char*,int*) ;
 scalar_t__ strlencmp (char*,char*) ;
 TYPE_1__ tp_features ;
 int tpacpi_disclose_usertask (char*,char*,int) ;

__attribute__((used)) static int hotkey_write(char *buf)
{
 int res;
 u32 mask;
 char *cmd;

 if (!tp_features.hotkey)
  return -ENODEV;

 if (mutex_lock_killable(&hotkey_mutex))
  return -ERESTARTSYS;

 mask = hotkey_user_mask;

 res = 0;
 while ((cmd = next_cmd(&buf))) {
  if (strlencmp(cmd, "enable") == 0) {
   hotkey_enabledisable_warn(1);
  } else if (strlencmp(cmd, "disable") == 0) {
   hotkey_enabledisable_warn(0);
   res = -EPERM;
  } else if (strlencmp(cmd, "reset") == 0) {
   mask = (hotkey_all_mask | hotkey_source_mask)
    & ~hotkey_reserved_mask;
  } else if (sscanf(cmd, "0x%x", &mask) == 1) {

  } else if (sscanf(cmd, "%x", &mask) == 1) {

  } else {
   res = -EINVAL;
   goto errexit;
  }
 }

 if (!res) {
  tpacpi_disclose_usertask("procfs hotkey",
   "set mask to 0x%08x\n", mask);
  res = hotkey_user_mask_set(mask);
 }

errexit:
 mutex_unlock(&hotkey_mutex);
 return res;
}
