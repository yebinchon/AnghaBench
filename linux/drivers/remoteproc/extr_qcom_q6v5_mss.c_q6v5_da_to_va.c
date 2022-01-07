
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct rproc {struct q6v5* priv; } ;
struct q6v5 {int mpss_reloc; int mpss_size; void* mpss_region; } ;



__attribute__((used)) static void *q6v5_da_to_va(struct rproc *rproc, u64 da, int len)
{
 struct q6v5 *qproc = rproc->priv;
 int offset;

 offset = da - qproc->mpss_reloc;
 if (offset < 0 || offset + len > qproc->mpss_size)
  return ((void*)0);

 return qproc->mpss_region + offset;
}
