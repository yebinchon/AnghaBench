
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tb_switch {int dev; TYPE_2__* tb; TYPE_1__* nvm; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int authenticating; int buf; } ;


 int EAGAIN ;
 int EINVAL ;
 int kstrtobool (char const*,int*) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int nvm_authenticate_complete (struct tb_switch*) ;
 int nvm_authenticate_device (struct tb_switch*) ;
 int nvm_authenticate_host (struct tb_switch*) ;
 int nvm_authenticate_start (struct tb_switch*) ;
 int nvm_clear_auth_status (struct tb_switch*) ;
 int nvm_validate_and_write (struct tb_switch*) ;
 int pm_runtime_get_sync (int *) ;
 int pm_runtime_mark_last_busy (int *) ;
 int pm_runtime_put_autosuspend (int *) ;
 int restart_syscall () ;
 int tb_route (struct tb_switch*) ;
 struct tb_switch* tb_to_switch (struct device*) ;

__attribute__((used)) static ssize_t nvm_authenticate_store(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct tb_switch *sw = tb_to_switch(dev);
 bool val;
 int ret;

 pm_runtime_get_sync(&sw->dev);

 if (!mutex_trylock(&sw->tb->lock)) {
  ret = restart_syscall();
  goto exit_rpm;
 }


 if (!sw->nvm) {
  ret = -EAGAIN;
  goto exit_unlock;
 }

 ret = kstrtobool(buf, &val);
 if (ret)
  goto exit_unlock;


 nvm_clear_auth_status(sw);

 if (val) {
  if (!sw->nvm->buf) {
   ret = -EINVAL;
   goto exit_unlock;
  }

  ret = nvm_validate_and_write(sw);
  if (ret)
   goto exit_unlock;

  sw->nvm->authenticating = 1;

  if (!tb_route(sw)) {




   nvm_authenticate_start(sw);
   ret = nvm_authenticate_host(sw);
   if (ret)
    nvm_authenticate_complete(sw);
  } else {
   ret = nvm_authenticate_device(sw);
  }
 }

exit_unlock:
 mutex_unlock(&sw->tb->lock);
exit_rpm:
 pm_runtime_mark_last_busy(&sw->dev);
 pm_runtime_put_autosuspend(&sw->dev);

 if (ret)
  return ret;
 return count;
}
