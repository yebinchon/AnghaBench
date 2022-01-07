
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rproc {scalar_t__ priv; } ;
struct qcom_wcnss {int mem_reloc; int mem_size; void* mem_region; } ;



__attribute__((used)) static void *wcnss_da_to_va(struct rproc *rproc, u64 da, int len)
{
 struct qcom_wcnss *wcnss = (struct qcom_wcnss *)rproc->priv;
 int offset;

 offset = da - wcnss->mem_reloc;
 if (offset < 0 || offset + len > wcnss->mem_size)
  return ((void*)0);

 return wcnss->mem_region + offset;
}
