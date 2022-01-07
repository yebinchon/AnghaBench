
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_group {int dummy; } ;


 int configfs_unregister_group (struct config_group*) ;
 int kfree (struct config_group*) ;

void configfs_unregister_default_group(struct config_group *group)
{
 configfs_unregister_group(group);
 kfree(group);
}
