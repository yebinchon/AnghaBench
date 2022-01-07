
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvcg_streaming_class_group {char* name; int group; } ;
struct config_group {int dummy; } ;


 unsigned int ARRAY_SIZE (char const* const*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int config_group_init_type_name (int *,char*,int *) ;
 int configfs_add_default_group (int *,struct config_group*) ;
 struct uvcg_streaming_class_group* kzalloc (int,int ) ;
 int uvcg_streaming_class_type ;

__attribute__((used)) static int uvcg_streaming_class_create_children(struct config_group *parent)
{
 static const char * const names[] = { "fs", "hs", "ss" };
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(names); ++i) {
  struct uvcg_streaming_class_group *group;

  group = kzalloc(sizeof(*group), GFP_KERNEL);
  if (!group)
   return -ENOMEM;

  group->name = names[i];

  config_group_init_type_name(&group->group, group->name,
         &uvcg_streaming_class_type);
  configfs_add_default_group(&group->group, parent);
 }

 return 0;
}
