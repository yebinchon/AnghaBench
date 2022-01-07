
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gasket_internal_desc {struct gasket_driver_desc const* driver_desc; int class; } ;
struct gasket_driver_desc {int name; int minor; int major; } ;


 int GASKET_DEV_MAX ;
 int GASKET_FRAMEWORK_DESC_MAX ;
 int MKDEV (int ,int ) ;
 int class_destroy (int ) ;
 struct gasket_internal_desc* g_descs ;
 int g_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ,int ,int ) ;
 int unregister_chrdev_region (int ,int ) ;

void gasket_unregister_device(const struct gasket_driver_desc *driver_desc)
{
 int i, desc_idx;
 struct gasket_internal_desc *internal_desc = ((void*)0);

 mutex_lock(&g_mutex);
 for (i = 0; i < GASKET_FRAMEWORK_DESC_MAX; i++) {
  if (g_descs[i].driver_desc == driver_desc) {
   internal_desc = &g_descs[i];
   desc_idx = i;
   break;
  }
 }

 if (!internal_desc) {
  mutex_unlock(&g_mutex);
  pr_err("request to unregister unknown desc: %s, %d:%d\n",
         driver_desc->name, driver_desc->major,
         driver_desc->minor);
  return;
 }

 unregister_chrdev_region(MKDEV(driver_desc->major, driver_desc->minor),
     GASKET_DEV_MAX);

 class_destroy(internal_desc->class);


 g_descs[desc_idx].driver_desc = ((void*)0);
 mutex_unlock(&g_mutex);

 pr_debug("removed %s driver\n", driver_desc->name);
}
