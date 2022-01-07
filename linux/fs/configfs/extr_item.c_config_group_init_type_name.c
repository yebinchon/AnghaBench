
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item_type {int dummy; } ;
struct TYPE_2__ {struct config_item_type const* ci_type; } ;
struct config_group {TYPE_1__ cg_item; } ;


 int config_group_init (struct config_group*) ;
 int config_item_set_name (TYPE_1__*,char*,char const*) ;

void config_group_init_type_name(struct config_group *group, const char *name,
    const struct config_item_type *type)
{
 config_item_set_name(&group->cg_item, "%s", name);
 group->cg_item.ci_type = type;
 config_group_init(group);
}
