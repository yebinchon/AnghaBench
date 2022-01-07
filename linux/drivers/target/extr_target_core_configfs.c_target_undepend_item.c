
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;


 void configfs_undepend_item (struct config_item*) ;

void target_undepend_item(struct config_item *item)
{
 return configfs_undepend_item(item);
}
