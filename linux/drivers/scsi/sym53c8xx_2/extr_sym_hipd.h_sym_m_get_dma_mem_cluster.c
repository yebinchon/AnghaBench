
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* m_vtob_p ;
typedef TYPE_2__* m_pool_p ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev_dmat; } ;
struct TYPE_5__ {int baddr; void* vaddr; } ;


 int GFP_ATOMIC ;
 int SYM_MEM_CLUSTER_SIZE ;
 void* dma_alloc_coherent (int ,int ,int *,int ) ;

__attribute__((used)) static inline void *sym_m_get_dma_mem_cluster(m_pool_p mp, m_vtob_p vbp)
{
 void *vaddr = ((void*)0);
 dma_addr_t baddr = 0;

 vaddr = dma_alloc_coherent(mp->dev_dmat, SYM_MEM_CLUSTER_SIZE, &baddr,
   GFP_ATOMIC);
 if (vaddr) {
  vbp->vaddr = vaddr;
  vbp->baddr = baddr;
 }
 return vaddr;
}
