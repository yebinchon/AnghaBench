
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gasket_internal_desc {int mutex; TYPE_1__** devs; } ;
struct TYPE_2__ {int kobj_name; } ;


 int EBUSY ;
 int GASKET_DEV_MAX ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,...) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int gasket_find_dev_slot(struct gasket_internal_desc *internal_desc,
    const char *kobj_name)
{
 int i;

 mutex_lock(&internal_desc->mutex);


 for (i = 0; i < GASKET_DEV_MAX; i++) {
  if (internal_desc->devs[i] &&
      strcmp(internal_desc->devs[i]->kobj_name, kobj_name) == 0) {
   pr_err("Duplicate device %s\n", kobj_name);
   mutex_unlock(&internal_desc->mutex);
   return -EBUSY;
  }
 }


 for (i = 0; i < GASKET_DEV_MAX; i++) {
  if (!internal_desc->devs[i])
   break;
 }

 if (i == GASKET_DEV_MAX) {
  pr_err("Too many registered devices; max %d\n", GASKET_DEV_MAX);
  mutex_unlock(&internal_desc->mutex);
  return -EBUSY;
 }

 mutex_unlock(&internal_desc->mutex);
 return i;
}
