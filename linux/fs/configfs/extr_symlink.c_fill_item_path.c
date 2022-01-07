
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {struct config_item* ci_parent; } ;


 int config_item_name (struct config_item*) ;
 int configfs_is_root (struct config_item*) ;
 int memcpy (char*,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static void fill_item_path(struct config_item * item, char * buffer, int length)
{
 struct config_item * p;

 --length;
 for (p = item; p && !configfs_is_root(p); p = p->ci_parent) {
  int cur = strlen(config_item_name(p));


  length -= cur;
  memcpy(buffer + length, config_item_name(p), cur);
  *(buffer + --length) = '/';
 }
}
