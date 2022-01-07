
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb_property_dir {int dummy; } ;
struct TYPE_2__ {struct tb_property_dir const* dir; } ;
struct tb_property {TYPE_1__ value; } ;


 int TB_PROPERTY_TYPE_DIRECTORY ;
 struct tb_property* tb_property_find (int ,char const*,int ) ;
 int tb_property_remove (struct tb_property*) ;
 int xdomain_property_dir ;

__attribute__((used)) static bool remove_directory(const char *key, const struct tb_property_dir *dir)
{
 struct tb_property *p;

 p = tb_property_find(xdomain_property_dir, key,
        TB_PROPERTY_TYPE_DIRECTORY);
 if (p && p->value.dir == dir) {
  tb_property_remove(p);
  return 1;
 }
 return 0;
}
