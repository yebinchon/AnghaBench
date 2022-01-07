
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdev_parent_ops {int supported_type_groups; int remove; int create; } ;
struct mdev_parent {int next; struct mdev_parent_ops const* ops; struct device* dev; int unreg_sem; int ref; } ;
struct device {int kobj; } ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KOBJ_CHANGE ;
 struct mdev_parent* __find_parent_device (struct device*) ;
 int class_compat_create_link (scalar_t__,struct device*,int *) ;
 scalar_t__ class_compat_register (char*) ;
 int dev_info (struct device*,char*) ;
 int dev_warn (struct device*,char*) ;
 struct device* get_device (struct device*) ;
 int init_rwsem (int *) ;
 int kobject_uevent_env (int *,int ,char**) ;
 int kref_init (int *) ;
 struct mdev_parent* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 scalar_t__ mdev_bus_compat_class ;
 int mdev_put_parent (struct mdev_parent*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int parent_create_sysfs_files (struct mdev_parent*) ;
 int parent_list ;
 int parent_list_lock ;
 int put_device (struct device*) ;

int mdev_register_device(struct device *dev, const struct mdev_parent_ops *ops)
{
 int ret;
 struct mdev_parent *parent;
 char *env_string = "MDEV_STATE=registered";
 char *envp[] = { env_string, ((void*)0) };


 if (!ops || !ops->create || !ops->remove || !ops->supported_type_groups)
  return -EINVAL;

 dev = get_device(dev);
 if (!dev)
  return -EINVAL;

 mutex_lock(&parent_list_lock);


 parent = __find_parent_device(dev);
 if (parent) {
  parent = ((void*)0);
  ret = -EEXIST;
  goto add_dev_err;
 }

 parent = kzalloc(sizeof(*parent), GFP_KERNEL);
 if (!parent) {
  ret = -ENOMEM;
  goto add_dev_err;
 }

 kref_init(&parent->ref);
 init_rwsem(&parent->unreg_sem);

 parent->dev = dev;
 parent->ops = ops;

 if (!mdev_bus_compat_class) {
  mdev_bus_compat_class = class_compat_register("mdev_bus");
  if (!mdev_bus_compat_class) {
   ret = -ENOMEM;
   goto add_dev_err;
  }
 }

 ret = parent_create_sysfs_files(parent);
 if (ret)
  goto add_dev_err;

 ret = class_compat_create_link(mdev_bus_compat_class, dev, ((void*)0));
 if (ret)
  dev_warn(dev, "Failed to create compatibility class link\n");

 list_add(&parent->next, &parent_list);
 mutex_unlock(&parent_list_lock);

 dev_info(dev, "MDEV: Registered\n");
 kobject_uevent_env(&dev->kobj, KOBJ_CHANGE, envp);

 return 0;

add_dev_err:
 mutex_unlock(&parent_list_lock);
 if (parent)
  mdev_put_parent(parent);
 else
  put_device(dev);
 return ret;
}
