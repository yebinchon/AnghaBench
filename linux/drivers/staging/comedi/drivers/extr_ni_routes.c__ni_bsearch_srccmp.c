
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int _ni_bsearch_srccmp(const void *vkey, const void *velt)
{
 const int *key = vkey;
 const int *elt = velt;

 if (*key < *elt)
  return -1;
 else if (*key > *elt)
  return 1;
 return 0;
}
