
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item_type {int dummy; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_group* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int config_group_init_type_name (struct config_group*,char const*,struct config_item_type const*) ;
 int configfs_register_group (struct config_group*,struct config_group*) ;
 int kfree (struct config_group*) ;
 struct config_group* kzalloc (int,int ) ;

struct config_group *
configfs_register_default_group(struct config_group *parent_group,
    const char *name,
    const struct config_item_type *item_type)
{
 int ret;
 struct config_group *group;

 group = kzalloc(sizeof(*group), GFP_KERNEL);
 if (!group)
  return ERR_PTR(-ENOMEM);
 config_group_init_type_name(group, name, item_type);

 ret = configfs_register_group(parent_group, group);
 if (ret) {
  kfree(group);
  return ERR_PTR(ret);
 }
 return group;
}
