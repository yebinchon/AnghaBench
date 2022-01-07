
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int kfree (struct config_group*) ;
 struct config_group* to_config_group (struct config_item*) ;

__attribute__((used)) static void uvcg_config_item_release(struct config_item *item)
{
 struct config_group *group = to_config_group(item);

 kfree(group);
}
