
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;
struct nvmet_port {struct config_group group; int entry; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int config_group_init_type_name (struct config_group*,char const*,int *) ;
 struct nvmet_port* kzalloc (int,int ) ;
 int nvmet_referral_type ;

__attribute__((used)) static struct config_group *nvmet_referral_make(
  struct config_group *group, const char *name)
{
 struct nvmet_port *port;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&port->entry);
 config_group_init_type_name(&port->group, name, &nvmet_referral_type);

 return &port->group;
}
