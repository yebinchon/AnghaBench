
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; } ;


 int DPA_RESOURCE_ADJUSTED ;

__attribute__((used)) static bool is_old_resource(struct resource *res, struct resource **list, int n)
{
 int i;

 if (res->flags & DPA_RESOURCE_ADJUSTED)
  return 0;
 for (i = 0; i < n; i++)
  if (res == list[i])
   return 1;
 return 0;
}
