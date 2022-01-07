
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isst_if_cmd_cb {int owner; scalar_t__ registered; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int ISST_IF_DEV_MAX ;
 int misc_device_open ;
 int module_put (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isst_if_cmd_cb* punit_callbacks ;
 int punit_misc_dev_lock ;

__attribute__((used)) static int isst_if_relase(struct inode *inode, struct file *f)
{
 int i;

 mutex_lock(&punit_misc_dev_lock);
 misc_device_open--;
 for (i = 0; i < ISST_IF_DEV_MAX; ++i) {
  struct isst_if_cmd_cb *cb = &punit_callbacks[i];

  if (cb->registered)
   module_put(cb->owner);
 }
 mutex_unlock(&punit_misc_dev_lock);

 return 0;
}
