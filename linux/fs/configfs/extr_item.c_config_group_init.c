
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int default_groups; int cg_children; int cg_item; } ;


 int INIT_LIST_HEAD (int *) ;
 int config_item_init (int *) ;

void config_group_init(struct config_group *group)
{
 config_item_init(&group->cg_item);
 INIT_LIST_HEAD(&group->cg_children);
 INIT_LIST_HEAD(&group->default_groups);
}
