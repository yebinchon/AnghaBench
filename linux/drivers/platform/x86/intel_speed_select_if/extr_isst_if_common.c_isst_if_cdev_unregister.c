
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ registered; } ;


 int ISST_IF_DEV_MBOX ;
 int isst_delete_hash () ;
 int isst_if_char_driver ;
 int isst_if_cpu_info_exit () ;
 int misc_deregister (int *) ;
 int misc_device_ret ;
 int misc_usage_count ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__* punit_callbacks ;
 int punit_misc_dev_lock ;

void isst_if_cdev_unregister(int device_type)
{
 mutex_lock(&punit_misc_dev_lock);
 misc_usage_count--;
 punit_callbacks[device_type].registered = 0;
 if (device_type == ISST_IF_DEV_MBOX)
  isst_delete_hash();
 if (!misc_usage_count && !misc_device_ret) {
  misc_deregister(&isst_if_char_driver);
  isst_if_cpu_info_exit();
 }
 mutex_unlock(&punit_misc_dev_lock);
}
