
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value_to_name_map {char const* name; } ;



__attribute__((used)) static const char *value_to_name(struct value_to_name_map *table, int count,
     int value)
{
 if (value >= count)
  return "unknown";
 return table[value].name;
}
