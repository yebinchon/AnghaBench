
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {struct config_item* ci_parent; } ;


 int configfs_is_root (struct config_item*) ;

__attribute__((used)) static int item_depth(struct config_item * item)
{
 struct config_item * p = item;
 int depth = 0;
 do { depth++; } while ((p = p->ci_parent) && !configfs_is_root(p));
 return depth;
}
