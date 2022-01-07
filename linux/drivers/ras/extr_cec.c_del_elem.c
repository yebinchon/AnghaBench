
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ce_array {int n; int * array; } ;


 int memmove (void*,void*,int) ;

__attribute__((used)) static void del_elem(struct ce_array *ca, int idx)
{

 if (ca->n - (idx + 1))
  memmove((void *)&ca->array[idx],
   (void *)&ca->array[idx + 1],
   (ca->n - (idx + 1)) * sizeof(u64));

 ca->n--;
}
