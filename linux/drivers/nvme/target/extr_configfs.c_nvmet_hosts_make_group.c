
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct nvmet_host {struct config_group group; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 struct nvmet_host* kzalloc (int,int ) ;
 int nvmet_host_type ;

__attribute__((used)) static struct config_group *nvmet_hosts_make_group(struct config_group *group,
  const char *name)
{
 struct nvmet_host *host;

 host = kzalloc(sizeof(*host), GFP_KERNEL);
 if (!host)
  return ERR_PTR(-ENOMEM);

 config_group_init_type_name(&host->group, name, &nvmet_host_type);

 return &host->group;
}
