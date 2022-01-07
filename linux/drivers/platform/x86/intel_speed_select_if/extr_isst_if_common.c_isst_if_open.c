
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_if_cmd_cb {int owner; scalar_t__ registered; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int ISST_IF_DEV_MAX ;
 int misc_device_open ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isst_if_cmd_cb* punit_callbacks ;
 int punit_misc_dev_lock ;
 int try_module_get (int ) ;

__attribute__((used)) static int isst_if_open(struct inode *inode, struct file *file)
{
 int i, ret = 0;


 mutex_lock(&punit_misc_dev_lock);
 for (i = 0; i < ISST_IF_DEV_MAX; ++i) {
  struct isst_if_cmd_cb *cb = &punit_callbacks[i];

  if (cb->registered && !try_module_get(cb->owner)) {
   ret = -ENODEV;
   break;
  }
 }
 if (ret) {
  int j;

  for (j = 0; j < i; ++j) {
   struct isst_if_cmd_cb *cb;

   cb = &punit_callbacks[j];
   if (cb->registered)
    module_put(cb->owner);
  }
 } else {
  misc_device_open++;
 }
 mutex_unlock(&punit_misc_dev_lock);

 return ret;
}
