
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;


 int configfs_depend_item (int *,struct config_item*) ;
 int target_core_fabrics ;

int target_depend_item(struct config_item *item)
{
 return configfs_depend_item(&target_core_fabrics, item);
}
