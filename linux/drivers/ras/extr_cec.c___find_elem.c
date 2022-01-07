
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ce_array {int n; int * array; } ;


 int ENOKEY ;
 int PFN (int ) ;

__attribute__((used)) static int __find_elem(struct ce_array *ca, u64 pfn, unsigned int *to)
{
 int min = 0, max = ca->n - 1;
 u64 this_pfn;

 while (min <= max) {
  int i = (min + max) >> 1;

  this_pfn = PFN(ca->array[i]);

  if (this_pfn < pfn)
   min = i + 1;
  else if (this_pfn > pfn)
   max = i - 1;
  else if (this_pfn == pfn) {
   if (to)
    *to = i;

   return i;
  }
 }
 if (to)
  *to = min;

 return -ENOKEY;
}
