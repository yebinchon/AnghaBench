
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct isst_if_cmd_cb {int dummy; } ;
struct TYPE_3__ {int registered; } ;


 int EAGAIN ;
 int EINVAL ;
 int ISST_IF_DEV_MAX ;
 int isst_if_char_driver ;
 int isst_if_cpu_info_init () ;
 int memcpy (TYPE_1__*,struct isst_if_cmd_cb*,int) ;
 int misc_deregister (int *) ;
 scalar_t__ misc_device_open ;
 int misc_device_ret ;
 int misc_register (int *) ;
 int misc_usage_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* punit_callbacks ;
 int punit_misc_dev_lock ;

int isst_if_cdev_register(int device_type, struct isst_if_cmd_cb *cb)
{
 if (misc_device_ret)
  return misc_device_ret;

 if (device_type >= ISST_IF_DEV_MAX)
  return -EINVAL;

 mutex_lock(&punit_misc_dev_lock);
 if (misc_device_open) {
  mutex_unlock(&punit_misc_dev_lock);
  return -EAGAIN;
 }
 if (!misc_usage_count) {
  int ret;

  misc_device_ret = misc_register(&isst_if_char_driver);
  if (misc_device_ret)
   goto unlock_exit;

  ret = isst_if_cpu_info_init();
  if (ret) {
   misc_deregister(&isst_if_char_driver);
   misc_device_ret = ret;
   goto unlock_exit;
  }
 }
 memcpy(&punit_callbacks[device_type], cb, sizeof(*cb));
 punit_callbacks[device_type].registered = 1;
 misc_usage_count++;
unlock_exit:
 mutex_unlock(&punit_misc_dev_lock);

 return misc_device_ret;
}
