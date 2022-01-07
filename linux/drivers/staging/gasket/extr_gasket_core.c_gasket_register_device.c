
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_internal_desc {struct gasket_driver_desc const* driver_desc; int class; int devs; int mutex; } ;
struct gasket_driver_desc {int name; int minor; int major; int module; int driver_version; } ;
struct gasket_dev {int dummy; } ;


 int EBUSY ;
 int GASKET_DEV_MAX ;
 int GASKET_FRAMEWORK_DESC_MAX ;
 scalar_t__ IS_ERR (int ) ;
 int MKDEV (int ,int ) ;
 int PTR_ERR (int ) ;
 int class_create (int ,int ) ;
 int class_destroy (int ) ;
 struct gasket_internal_desc* g_descs ;
 int g_mutex ;
 int memset (int ,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int,...) ;
 int register_chrdev_region (int ,int,int ) ;

int gasket_register_device(const struct gasket_driver_desc *driver_desc)
{
 int i, ret;
 int desc_idx = -1;
 struct gasket_internal_desc *internal;

 pr_debug("Loading %s driver version %s\n", driver_desc->name,
   driver_desc->driver_version);

 mutex_lock(&g_mutex);

 for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
  if (g_descs[i].driver_desc == driver_desc) {
   pr_err("%s driver already loaded/registered\n",
          driver_desc->name);
   mutex_unlock(&g_mutex);
   return -EBUSY;
  }
 }


 for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
  if (!g_descs[i].driver_desc) {
   g_descs[i].driver_desc = driver_desc;
   desc_idx = i;
   break;
  }
 }
 mutex_unlock(&g_mutex);

 if (desc_idx == -1) {
  pr_err("too many drivers loaded, max %d\n",
         GASKET_FRAMEWORK_DESC_MAX);
  return -EBUSY;
 }

 internal = &g_descs[desc_idx];
 mutex_init(&internal->mutex);
 memset(internal->devs, 0, sizeof(struct gasket_dev *) * GASKET_DEV_MAX);
 internal->class =
  class_create(driver_desc->module, driver_desc->name);

 if (IS_ERR(internal->class)) {
  pr_err("Cannot register %s class [ret=%ld]\n",
         driver_desc->name, PTR_ERR(internal->class));
  ret = PTR_ERR(internal->class);
  goto unregister_gasket_driver;
 }

 ret = register_chrdev_region(MKDEV(driver_desc->major,
        driver_desc->minor), GASKET_DEV_MAX,
         driver_desc->name);
 if (ret) {
  pr_err("cannot register %s char driver [ret=%d]\n",
         driver_desc->name, ret);
  goto destroy_class;
 }

 return 0;

destroy_class:
 class_destroy(internal->class);

unregister_gasket_driver:
 mutex_lock(&g_mutex);
 g_descs[desc_idx].driver_desc = ((void*)0);
 mutex_unlock(&g_mutex);
 return ret;
}
