
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserved_mem {int name; } ;
struct device_node {int full_name; } ;


 char* kbasename (int ) ;
 struct reserved_mem* reserved_mem ;
 int reserved_mem_count ;
 int strcmp (int ,char const*) ;

struct reserved_mem *of_reserved_mem_lookup(struct device_node *np)
{
 const char *name;
 int i;

 if (!np->full_name)
  return ((void*)0);

 name = kbasename(np->full_name);
 for (i = 0; i < reserved_mem_count; i++)
  if (!strcmp(reserved_mem[i].name, name))
   return &reserved_mem[i];

 return ((void*)0);
}
