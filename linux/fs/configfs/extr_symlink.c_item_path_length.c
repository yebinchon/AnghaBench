
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {struct config_item* ci_parent; } ;


 int config_item_name (struct config_item*) ;
 int configfs_is_root (struct config_item*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int item_path_length(struct config_item * item)
{
 struct config_item * p = item;
 int length = 1;
 do {
  length += strlen(config_item_name(p)) + 1;
  p = p->ci_parent;
 } while (p && !configfs_is_root(p));
 return length;
}
