
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_set {scalar_t__ dest; } ;



__attribute__((used)) static int _ni_sort_destcmp(const void *va, const void *vb)
{
 const struct ni_route_set *a = va;
 const struct ni_route_set *b = vb;

 if (a->dest < b->dest)
  return -1;
 else if (a->dest > b->dest)
  return 1;
 return 0;
}
