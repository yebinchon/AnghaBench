
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_set {int const dest; } ;



__attribute__((used)) static int _ni_bsearch_destcmp(const void *vkey, const void *velt)
{
 const int *key = vkey;
 const struct ni_route_set *elt = velt;

 if (*key < elt->dest)
  return -1;
 else if (*key > elt->dest)
  return 1;
 return 0;
}
