
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvmet_subsys {int subsysnqn; } ;
struct config_group {int cg_item; } ;
struct nvmet_ns {struct config_group group; } ;


 int EINVAL ;
 int ENOMEM ;
 struct config_group* ERR_PTR (int) ;
 scalar_t__ NVME_NSID_ALL ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 int kstrtou32 (char const*,int ,scalar_t__*) ;
 struct nvmet_subsys* namespaces_to_subsys (int *) ;
 struct nvmet_ns* nvmet_ns_alloc (struct nvmet_subsys*,scalar_t__) ;
 int nvmet_ns_type ;
 int pr_err (char*,scalar_t__) ;
 int pr_info (char*,scalar_t__,int ) ;

__attribute__((used)) static struct config_group *nvmet_ns_make(struct config_group *group,
  const char *name)
{
 struct nvmet_subsys *subsys = namespaces_to_subsys(&group->cg_item);
 struct nvmet_ns *ns;
 int ret;
 u32 nsid;

 ret = kstrtou32(name, 0, &nsid);
 if (ret)
  goto out;

 ret = -EINVAL;
 if (nsid == 0 || nsid == NVME_NSID_ALL) {
  pr_err("invalid nsid %#x", nsid);
  goto out;
 }

 ret = -ENOMEM;
 ns = nvmet_ns_alloc(subsys, nsid);
 if (!ns)
  goto out;
 config_group_init_type_name(&ns->group, name, &nvmet_ns_type);

 pr_info("adding nsid %d to subsystem %s\n", nsid, subsys->subsysnqn);

 return &ns->group;
out:
 return ERR_PTR(ret);
}
