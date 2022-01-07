
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_parent {int unreg_sem; int next; } ;
struct device {int kobj; } ;


 int KOBJ_CHANGE ;
 struct mdev_parent* __find_parent_device (struct device*) ;
 int class_compat_remove_link (int ,struct device*,int *) ;
 int dev_info (struct device*,char*) ;
 int device_for_each_child (struct device*,int *,int ) ;
 int down_write (int *) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int list_del (int *) ;
 int mdev_bus_compat_class ;
 int mdev_device_remove_cb ;
 int mdev_put_parent (struct mdev_parent*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parent_list_lock ;
 int parent_remove_sysfs_files (struct mdev_parent*) ;
 int up_write (int *) ;

void mdev_unregister_device(struct device *dev)
{
 struct mdev_parent *parent;
 char *env_string = "MDEV_STATE=unregistered";
 char *envp[] = { env_string, ((void*)0) };

 mutex_lock(&parent_list_lock);
 parent = __find_parent_device(dev);

 if (!parent) {
  mutex_unlock(&parent_list_lock);
  return;
 }
 dev_info(dev, "MDEV: Unregistering\n");

 list_del(&parent->next);
 mutex_unlock(&parent_list_lock);

 down_write(&parent->unreg_sem);

 class_compat_remove_link(mdev_bus_compat_class, dev, ((void*)0));

 device_for_each_child(dev, ((void*)0), mdev_device_remove_cb);

 parent_remove_sysfs_files(parent);
 up_write(&parent->unreg_sem);

 mdev_put_parent(parent);


 kobject_uevent_env(&dev->kobj, KOBJ_CHANGE, envp);
}
