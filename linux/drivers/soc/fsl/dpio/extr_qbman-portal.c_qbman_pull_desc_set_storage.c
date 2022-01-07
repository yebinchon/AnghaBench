
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct qbman_pull_desc {int verb; int rsp_addr; scalar_t__ rsp_addr_virt; } ;
struct dpaa2_dq {int dummy; } ;
typedef int dma_addr_t ;


 int QB_VDQCR_VERB_RLS_SHIFT ;
 int QB_VDQCR_VERB_WAE_SHIFT ;
 int cpu_to_le64 (int ) ;

void qbman_pull_desc_set_storage(struct qbman_pull_desc *d,
     struct dpaa2_dq *storage,
     dma_addr_t storage_phys,
     int stash)
{

 d->rsp_addr_virt = (u64)(uintptr_t)storage;

 if (!storage) {
  d->verb &= ~(1 << QB_VDQCR_VERB_RLS_SHIFT);
  return;
 }
 d->verb |= 1 << QB_VDQCR_VERB_RLS_SHIFT;
 if (stash)
  d->verb |= 1 << QB_VDQCR_VERB_WAE_SHIFT;
 else
  d->verb &= ~(1 << QB_VDQCR_VERB_WAE_SHIFT);

 d->rsp_addr = cpu_to_le64(storage_phys);
}
