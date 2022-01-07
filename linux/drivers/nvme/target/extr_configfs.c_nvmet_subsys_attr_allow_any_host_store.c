
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_subsys {int allow_any_host; int hosts; } ;
struct config_item {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int down_write (int *) ;
 int list_empty (int *) ;
 int nvmet_config_sem ;
 int nvmet_subsys_disc_changed (struct nvmet_subsys*,int *) ;
 int pr_err (char*) ;
 scalar_t__ strtobool (char const*,int*) ;
 struct nvmet_subsys* to_subsys (struct config_item*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t nvmet_subsys_attr_allow_any_host_store(struct config_item *item,
  const char *page, size_t count)
{
 struct nvmet_subsys *subsys = to_subsys(item);
 bool allow_any_host;
 int ret = 0;

 if (strtobool(page, &allow_any_host))
  return -EINVAL;

 down_write(&nvmet_config_sem);
 if (allow_any_host && !list_empty(&subsys->hosts)) {
  pr_err("Can't set allow_any_host when explicit hosts are set!\n");
  ret = -EINVAL;
  goto out_unlock;
 }

 if (subsys->allow_any_host != allow_any_host) {
  subsys->allow_any_host = allow_any_host;
  nvmet_subsys_disc_changed(subsys, ((void*)0));
 }

out_unlock:
 up_write(&nvmet_config_sem);
 return ret ? ret : count;
}
