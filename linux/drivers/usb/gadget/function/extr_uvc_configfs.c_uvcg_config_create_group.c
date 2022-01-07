
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvcg_config_group_type {int type; int name; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int config_group_init_type_name (struct config_group*,int ,int *) ;
 int configfs_add_default_group (struct config_group*,struct config_group*) ;
 struct config_group* kzalloc (int,int ) ;
 int uvcg_config_create_children (struct config_group*,struct uvcg_config_group_type const*) ;

__attribute__((used)) static int uvcg_config_create_group(struct config_group *parent,
        const struct uvcg_config_group_type *type)
{
 struct config_group *group;

 group = kzalloc(sizeof(*group), GFP_KERNEL);
 if (!group)
  return -ENOMEM;

 config_group_init_type_name(group, type->name, &type->type);
 configfs_add_default_group(group, parent);

 return uvcg_config_create_children(group, type);
}
