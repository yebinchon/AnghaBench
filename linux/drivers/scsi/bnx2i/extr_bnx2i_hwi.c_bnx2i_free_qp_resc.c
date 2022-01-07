
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnx2i_hba {TYPE_1__* pcidev; } ;
struct TYPE_4__ {scalar_t__ cq_phys; int * cq_virt; int cq_mem_size; scalar_t__ cq_pgtbl_phys; int * cq_pgtbl_virt; int cq_pgtbl_size; scalar_t__ rq_phys; int * rq_virt; int rq_mem_size; scalar_t__ rq_pgtbl_phys; int * rq_pgtbl_virt; int rq_pgtbl_size; scalar_t__ sq_phys; int * sq_virt; int sq_mem_size; scalar_t__ sq_pgtbl_phys; int * sq_pgtbl_virt; int sq_pgtbl_size; int * ctx_base; } ;
struct bnx2i_endpoint {TYPE_2__ qp; } ;
struct TYPE_3__ {int dev; } ;


 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int iounmap (int *) ;

void bnx2i_free_qp_resc(struct bnx2i_hba *hba, struct bnx2i_endpoint *ep)
{
 if (ep->qp.ctx_base) {
  iounmap(ep->qp.ctx_base);
  ep->qp.ctx_base = ((void*)0);
 }

 if (ep->qp.sq_pgtbl_virt) {
  dma_free_coherent(&hba->pcidev->dev, ep->qp.sq_pgtbl_size,
      ep->qp.sq_pgtbl_virt, ep->qp.sq_pgtbl_phys);
  ep->qp.sq_pgtbl_virt = ((void*)0);
  ep->qp.sq_pgtbl_phys = 0;
 }
 if (ep->qp.sq_virt) {
  dma_free_coherent(&hba->pcidev->dev, ep->qp.sq_mem_size,
      ep->qp.sq_virt, ep->qp.sq_phys);
  ep->qp.sq_virt = ((void*)0);
  ep->qp.sq_phys = 0;
 }


 if (ep->qp.rq_pgtbl_virt) {
  dma_free_coherent(&hba->pcidev->dev, ep->qp.rq_pgtbl_size,
      ep->qp.rq_pgtbl_virt, ep->qp.rq_pgtbl_phys);
  ep->qp.rq_pgtbl_virt = ((void*)0);
  ep->qp.rq_pgtbl_phys = 0;
 }
 if (ep->qp.rq_virt) {
  dma_free_coherent(&hba->pcidev->dev, ep->qp.rq_mem_size,
      ep->qp.rq_virt, ep->qp.rq_phys);
  ep->qp.rq_virt = ((void*)0);
  ep->qp.rq_phys = 0;
 }


 if (ep->qp.cq_pgtbl_virt) {
  dma_free_coherent(&hba->pcidev->dev, ep->qp.cq_pgtbl_size,
      ep->qp.cq_pgtbl_virt, ep->qp.cq_pgtbl_phys);
  ep->qp.cq_pgtbl_virt = ((void*)0);
  ep->qp.cq_pgtbl_phys = 0;
 }
 if (ep->qp.cq_virt) {
  dma_free_coherent(&hba->pcidev->dev, ep->qp.cq_mem_size,
      ep->qp.cq_virt, ep->qp.cq_phys);
  ep->qp.cq_virt = ((void*)0);
  ep->qp.cq_phys = 0;
 }
}
