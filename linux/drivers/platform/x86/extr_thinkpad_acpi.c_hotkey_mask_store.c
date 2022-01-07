
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ERESTARTSYS ;
 int hotkey_mutex ;
 int hotkey_poll_setup (int) ;
 int hotkey_user_mask_set (unsigned long) ;
 scalar_t__ mutex_lock_killable (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;
 int tpacpi_disclose_usertask (char*,char*,unsigned long) ;

__attribute__((used)) static ssize_t hotkey_mask_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long t;
 int res;

 if (parse_strtoul(buf, 0xffffffffUL, &t))
  return -EINVAL;

 if (mutex_lock_killable(&hotkey_mutex))
  return -ERESTARTSYS;

 res = hotkey_user_mask_set(t);





 mutex_unlock(&hotkey_mutex);

 tpacpi_disclose_usertask("hotkey_mask", "set to 0x%08lx\n", t);

 return (res) ? res : count;
}
