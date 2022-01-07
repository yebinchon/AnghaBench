
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bfi_iocfc_cfgrsp_s {int dummy; } ;
struct bfi_iocfc_cfg_s {int dummy; } ;
struct bfi_ioc_attr_s {int dummy; } ;
struct bfa_s {int dummy; } ;
struct bfa_meminfo_s {int dummy; } ;
struct bfa_mem_kva_s {int dummy; } ;
struct bfa_mem_dma_s {int dummy; } ;
struct TYPE_4__ {int num_cqs; } ;
struct TYPE_3__ {int num_reqq_elems; int num_rspq_elems; } ;
struct bfa_iocfc_cfg_s {TYPE_2__ fwcfg; TYPE_1__ drvcfg; } ;


 int BFA_CACHELINE_SZ ;
 int BFA_DBG_FWTRC_LEN ;
 int BFA_DMA_ALIGN_SZ ;
 struct bfa_mem_dma_s* BFA_MEM_IOCFC_DMA (struct bfa_s*) ;
 struct bfa_mem_kva_s* BFA_MEM_IOCFC_KVA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_IOC_DMA (struct bfa_s*) ;
 struct bfa_mem_dma_s* BFA_MEM_REQQ_DMA (struct bfa_s*,int) ;
 struct bfa_mem_dma_s* BFA_MEM_RSPQ_DMA (struct bfa_s*,int) ;
 int BFA_ROUNDUP (int,int) ;
 int BFI_LMSG_SZ ;
 int bfa_mem_dma_setup (struct bfa_meminfo_s*,struct bfa_mem_dma_s*,int) ;
 int bfa_mem_kva_setup (struct bfa_meminfo_s*,struct bfa_mem_kva_s*,int ) ;

void
bfa_iocfc_meminfo(struct bfa_iocfc_cfg_s *cfg, struct bfa_meminfo_s *meminfo,
    struct bfa_s *bfa)
{
 int q, per_reqq_sz, per_rspq_sz;
 struct bfa_mem_dma_s *ioc_dma = BFA_MEM_IOC_DMA(bfa);
 struct bfa_mem_dma_s *iocfc_dma = BFA_MEM_IOCFC_DMA(bfa);
 struct bfa_mem_kva_s *iocfc_kva = BFA_MEM_IOCFC_KVA(bfa);
 u32 dm_len = 0;


 bfa_mem_dma_setup(meminfo, ioc_dma,
  BFA_ROUNDUP(sizeof(struct bfi_ioc_attr_s), BFA_DMA_ALIGN_SZ));


 per_reqq_sz = BFA_ROUNDUP((cfg->drvcfg.num_reqq_elems * BFI_LMSG_SZ),
    BFA_DMA_ALIGN_SZ);
 per_rspq_sz = BFA_ROUNDUP((cfg->drvcfg.num_rspq_elems * BFI_LMSG_SZ),
    BFA_DMA_ALIGN_SZ);

 for (q = 0; q < cfg->fwcfg.num_cqs; q++) {
  bfa_mem_dma_setup(meminfo, BFA_MEM_REQQ_DMA(bfa, q),
    per_reqq_sz);
  bfa_mem_dma_setup(meminfo, BFA_MEM_RSPQ_DMA(bfa, q),
    per_rspq_sz);
 }


 for (q = 0; q < cfg->fwcfg.num_cqs; q++)
  dm_len += (2 * BFA_CACHELINE_SZ);


 dm_len += BFA_ROUNDUP(sizeof(struct bfi_iocfc_cfg_s), BFA_CACHELINE_SZ);
 dm_len += BFA_ROUNDUP(sizeof(struct bfi_iocfc_cfgrsp_s),
   BFA_CACHELINE_SZ);


 bfa_mem_dma_setup(meminfo, iocfc_dma, dm_len);


 bfa_mem_kva_setup(meminfo, iocfc_kva, BFA_DBG_FWTRC_LEN);
}
