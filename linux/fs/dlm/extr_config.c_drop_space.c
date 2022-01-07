
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_space {int group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int config_item_put (struct config_item*) ;
 struct dlm_space* config_item_to_space (struct config_item*) ;
 int configfs_remove_default_groups (int *) ;

__attribute__((used)) static void drop_space(struct config_group *g, struct config_item *i)
{
 struct dlm_space *sp = config_item_to_space(i);



 configfs_remove_default_groups(&sp->group);
 config_item_put(i);
}
