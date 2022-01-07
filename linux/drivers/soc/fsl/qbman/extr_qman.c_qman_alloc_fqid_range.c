
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int qm_fqalloc ;
 int qman_alloc_range (int ,int *,int ) ;

int qman_alloc_fqid_range(u32 *result, u32 count)
{
 return qman_alloc_range(qm_fqalloc, result, count);
}
