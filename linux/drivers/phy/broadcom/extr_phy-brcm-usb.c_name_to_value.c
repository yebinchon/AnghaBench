
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_to_name_map {int name; } ;


 int EINVAL ;
 scalar_t__ sysfs_streq (char const*,int ) ;

__attribute__((used)) static int name_to_value(struct value_to_name_map *table, int count,
    const char *name, int *value)
{
 int x;

 *value = 0;
 for (x = 0; x < count; x++) {
  if (sysfs_streq(name, table[x].name)) {
   *value = x;
   return 0;
  }
 }
 return -EINVAL;
}
