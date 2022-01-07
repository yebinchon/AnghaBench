
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct dma_address {int addr_hi; int addr_lo; } ;
struct TYPE_5__ {int bmbx_size; int aphys; struct dma_address dma_address; int avirt; struct lpfc_dmabuf* dmabuf; } ;
struct TYPE_6__ {TYPE_2__ bmbx; } ;
struct lpfc_hba {TYPE_3__ sli4_hba; TYPE_1__* pcidev; } ;
struct lpfc_dmabuf {int phys; int virt; } ;
struct lpfc_bmbx_create {int dummy; } ;
struct TYPE_4__ {int dev; } ;


 int ALIGN (int ,int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int LPFC_ALIGN_16_BYTE ;
 int LPFC_BMBX_BIT1_ADDR_HI ;
 int LPFC_BMBX_BIT1_ADDR_LO ;
 int PTR_ALIGN (int ,int) ;
 int dma_alloc_coherent (int *,int,int *,int ) ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kzalloc (int,int ) ;

__attribute__((used)) static int
lpfc_create_bootstrap_mbox(struct lpfc_hba *phba)
{
 uint32_t bmbx_size;
 struct lpfc_dmabuf *dmabuf;
 struct dma_address *dma_address;
 uint32_t pa_addr;
 uint64_t phys_addr;

 dmabuf = kzalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!dmabuf)
  return -ENOMEM;





 bmbx_size = sizeof(struct lpfc_bmbx_create) + (LPFC_ALIGN_16_BYTE - 1);
 dmabuf->virt = dma_alloc_coherent(&phba->pcidev->dev, bmbx_size,
       &dmabuf->phys, GFP_KERNEL);
 if (!dmabuf->virt) {
  kfree(dmabuf);
  return -ENOMEM;
 }
 phba->sli4_hba.bmbx.dmabuf = dmabuf;
 phba->sli4_hba.bmbx.bmbx_size = bmbx_size;

 phba->sli4_hba.bmbx.avirt = PTR_ALIGN(dmabuf->virt,
           LPFC_ALIGN_16_BYTE);
 phba->sli4_hba.bmbx.aphys = ALIGN(dmabuf->phys,
           LPFC_ALIGN_16_BYTE);
 dma_address = &phba->sli4_hba.bmbx.dma_address;
 phys_addr = (uint64_t)phba->sli4_hba.bmbx.aphys;
 pa_addr = (uint32_t) ((phys_addr >> 34) & 0x3fffffff);
 dma_address->addr_hi = (uint32_t) ((pa_addr << 2) |
        LPFC_BMBX_BIT1_ADDR_HI);

 pa_addr = (uint32_t) ((phba->sli4_hba.bmbx.aphys >> 4) & 0x3fffffff);
 dma_address->addr_lo = (uint32_t) ((pa_addr << 2) |
        LPFC_BMBX_BIT1_ADDR_LO);
 return 0;
}
