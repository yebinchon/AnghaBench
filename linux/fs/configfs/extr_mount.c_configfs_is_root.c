
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;


 TYPE_1__ configfs_root_group ;

int configfs_is_root(struct config_item *item)
{
 return item == &configfs_root_group.cg_item;
}
