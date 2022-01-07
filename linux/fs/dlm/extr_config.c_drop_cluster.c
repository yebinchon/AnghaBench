
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_cluster {int group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int * comm_list ;
 int config_item_put (struct config_item*) ;
 struct dlm_cluster* config_item_to_cluster (struct config_item*) ;
 int configfs_remove_default_groups (int *) ;
 int * space_list ;

__attribute__((used)) static void drop_cluster(struct config_group *g, struct config_item *i)
{
 struct dlm_cluster *cl = config_item_to_cluster(i);

 configfs_remove_default_groups(&cl->group);

 space_list = ((void*)0);
 comm_list = ((void*)0);

 config_item_put(i);
}
