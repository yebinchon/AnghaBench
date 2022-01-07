
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item_type {TYPE_1__* ct_group_ops; } ;
struct config_item {struct config_item_type* ci_type; } ;
struct TYPE_2__ {int (* drop_item ) (int ,struct config_item*) ;} ;


 int BUG_ON (int) ;
 int config_item_put (struct config_item*) ;
 int stub1 (int ,struct config_item*) ;
 int to_config_group (struct config_item*) ;

__attribute__((used)) static void client_drop_item(struct config_item *parent_item,
        struct config_item *item)
{
 const struct config_item_type *type;

 type = parent_item->ci_type;
 BUG_ON(!type);





 if (type->ct_group_ops && type->ct_group_ops->drop_item)
  type->ct_group_ops->drop_item(to_config_group(parent_item),
           item);
 else
  config_item_put(item);
}
