
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ns {int dummy; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int nvmet_ns_disable (struct nvmet_ns*) ;
 int nvmet_ns_enable (struct nvmet_ns*) ;
 scalar_t__ strtobool (char const*,int*) ;
 struct nvmet_ns* to_nvmet_ns (struct config_item*) ;

__attribute__((used)) static ssize_t nvmet_ns_enable_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_ns *ns = to_nvmet_ns(item);
 bool enable;
 int ret = 0;

 if (strtobool(page, &enable))
  return -EINVAL;

 if (enable)
  ret = nvmet_ns_enable(ns);
 else
  nvmet_ns_disable(ns);

 return ret ? ret : count;
}
