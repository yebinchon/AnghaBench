
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
typedef int ssize_t ;


 char* db_root ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t target_core_item_dbroot_show(struct config_item *item,
         char *page)
{
 return sprintf(page, "%s\n", db_root);
}
