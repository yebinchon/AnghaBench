
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int lock; } ;
struct nvmet_ns {int uuid; scalar_t__ enabled; struct nvmet_subsys* subsys; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EBUSY ;
 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;
 scalar_t__ uuid_parse (char const*,int *) ;

__attribute__((used)) static ssize_t nvmet_ns_device_uuid_store(struct config_item *item,
       const char *page, size_t count)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);
 struct nvmet_subsys *subsys = ns->subsys;
 int ret = 0;


 mutex_lock(&subsys->lock);
 if (ns->enabled) {
  ret = -EBUSY;
  goto out_unlock;
 }


 if (uuid_parse(page, &ns->uuid))
  ret = -EINVAL;

out_unlock:
 mutex_unlock(&subsys->lock);
 return ret ? ret : count;
}
