
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int lock; } ;
struct nvmet_ns {int device_path; scalar_t__ enabled; struct nvmet_subsys* subsys; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (int ) ;
 int kstrndup (char const*,size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 size_t strcspn (char const*,char*) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_ns_device_path_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);
 struct nvmet_subsys *subsys = ns->subsys;
 size_t len;
 int ret;

 mutex_lock(&subsys->lock);
 ret = -EBUSY;
 if (ns->enabled)
  goto out_unlock;

 ret = -EINVAL;
 len = strcspn(page, "\n");
 if (!len)
  goto out_unlock;

 kfree(ns->device_path);
 ret = -ENOMEM;
 ns->device_path = kstrndup(page, len, GFP_KERNEL);
 if (!ns->device_path)
  goto out_unlock;

 mutex_unlock(&subsys->lock);
 return count;

out_unlock:
 mutex_unlock(&subsys->lock);
 return ret;
}
