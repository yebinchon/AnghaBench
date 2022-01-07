
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {TYPE_1__* ci_group; int ci_entry; struct config_item* ci_parent; } ;
struct TYPE_2__ {int cg_children; } ;


 TYPE_1__* config_group_get (int ) ;
 int config_item_get (struct config_item*) ;
 int list_add_tail (int *,int *) ;
 int to_config_group (struct config_item*) ;

__attribute__((used)) static void link_obj(struct config_item *parent_item, struct config_item *item)
{




 item->ci_parent = parent_item;





 item->ci_group = config_group_get(to_config_group(parent_item));
 list_add_tail(&item->ci_entry, &item->ci_group->cg_children);





 config_item_get(item);
}
