
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct nvmet_subsys {struct config_group group; struct config_group allowed_hosts_group; struct config_group namespaces_group; } ;


 int EINVAL ;
 struct config_group* ERR_CAST (struct nvmet_subsys*) ;
 struct config_group* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct nvmet_subsys*) ;
 int NVME_DISC_SUBSYS_NAME ;
 int NVME_NQN_NVME ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 int nvmet_allowed_hosts_type ;
 int nvmet_namespaces_type ;
 struct nvmet_subsys* nvmet_subsys_alloc (char const*,int ) ;
 int nvmet_subsys_type ;
 int pr_err (char*) ;
 scalar_t__ sysfs_streq (char const*,int ) ;

__attribute__((used)) static struct config_group *nvmet_subsys_make(struct config_group *group,
  const char *name)
{
 struct nvmet_subsys *subsys;

 if (sysfs_streq(name, NVME_DISC_SUBSYS_NAME)) {
  pr_err("can't create discovery subsystem through configfs\n");
  return ERR_PTR(-EINVAL);
 }

 subsys = nvmet_subsys_alloc(name, NVME_NQN_NVME);
 if (IS_ERR(subsys))
  return ERR_CAST(subsys);

 config_group_init_type_name(&subsys->group, name, &nvmet_subsys_type);

 config_group_init_type_name(&subsys->namespaces_group,
   "namespaces", &nvmet_namespaces_type);
 configfs_add_default_group(&subsys->namespaces_group, &subsys->group);

 config_group_init_type_name(&subsys->allowed_hosts_group,
   "allowed_hosts", &nvmet_allowed_hosts_type);
 configfs_add_default_group(&subsys->allowed_hosts_group,
   &subsys->group);

 return &subsys->group;
}
