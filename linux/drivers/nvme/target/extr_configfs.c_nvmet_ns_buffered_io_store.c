
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvmet_ns {int buffered_io; TYPE_1__* subsys; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int lock; } ;


 size_t EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*) ;
 scalar_t__ strtobool (char const*,int*) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_ns_buffered_io_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);
 bool val;

 if (strtobool(page, &val))
  return -EINVAL;

 mutex_lock(&ns->subsys->lock);
 if (ns->enabled) {
  pr_err("disable ns before setting buffered_io value.\n");
  mutex_unlock(&ns->subsys->lock);
  return -EINVAL;
 }

 ns->buffered_io = val;
 mutex_unlock(&ns->subsys->lock);
 return count;
}
