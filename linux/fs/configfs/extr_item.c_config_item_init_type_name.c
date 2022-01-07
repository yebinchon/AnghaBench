
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item_type {int dummy; } ;
struct config_item {struct config_item_type const* ci_type; } ;


 int config_item_init (struct config_item*) ;
 int config_item_set_name (struct config_item*,char*,char const*) ;

void config_item_init_type_name(struct config_item *item,
    const char *name,
    const struct config_item_type *type)
{
 config_item_set_name(item, "%s", name);
 item->ci_type = type;
 config_item_init(item);
}
