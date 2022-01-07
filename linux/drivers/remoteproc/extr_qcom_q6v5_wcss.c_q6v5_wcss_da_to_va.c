
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rproc {struct q6v5_wcss* priv; } ;
struct q6v5_wcss {int mem_reloc; int mem_size; void* mem_region; } ;



__attribute__((used)) static void *q6v5_wcss_da_to_va(struct rproc *rproc, u64 da, int len)
{
 struct q6v5_wcss *wcss = rproc->priv;
 int offset;

 offset = da - wcss->mem_reloc;
 if (offset < 0 || offset + len > wcss->mem_size)
  return ((void*)0);

 return wcss->mem_region + offset;
}
