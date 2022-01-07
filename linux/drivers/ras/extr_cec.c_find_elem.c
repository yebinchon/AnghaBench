
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ce_array {int n; } ;


 int ENOKEY ;
 int WARN_ON (int) ;
 int __find_elem (struct ce_array*,int ,unsigned int*) ;

__attribute__((used)) static int find_elem(struct ce_array *ca, u64 pfn, unsigned int *to)
{
 WARN_ON(!to);

 if (!ca->n) {
  *to = 0;
  return -ENOKEY;
 }
 return __find_elem(ca, pfn, to);
}
