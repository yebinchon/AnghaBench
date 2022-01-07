
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int phys; void* virt; } ;
struct TYPE_3__ {void* virt; int phys; } ;
struct rqb_dmabuf {int total_size; TYPE_2__ hbuf; TYPE_1__ dbuf; } ;
struct lpfc_hba {int lpfc_hrb_pool; int lpfc_nvmet_drb_pool; } ;


 int GFP_KERNEL ;
 int LPFC_NVMET_DATA_BUF_SIZE ;
 void* dma_pool_alloc (int ,int ,int *) ;
 int dma_pool_free (int ,void*,int ) ;
 int kfree (struct rqb_dmabuf*) ;
 struct rqb_dmabuf* kzalloc (int,int ) ;

struct rqb_dmabuf *
lpfc_sli4_nvmet_alloc(struct lpfc_hba *phba)
{
 struct rqb_dmabuf *dma_buf;

 dma_buf = kzalloc(sizeof(struct rqb_dmabuf), GFP_KERNEL);
 if (!dma_buf)
  return ((void*)0);

 dma_buf->hbuf.virt = dma_pool_alloc(phba->lpfc_hrb_pool, GFP_KERNEL,
         &dma_buf->hbuf.phys);
 if (!dma_buf->hbuf.virt) {
  kfree(dma_buf);
  return ((void*)0);
 }
 dma_buf->dbuf.virt = dma_pool_alloc(phba->lpfc_nvmet_drb_pool,
         GFP_KERNEL, &dma_buf->dbuf.phys);
 if (!dma_buf->dbuf.virt) {
  dma_pool_free(phba->lpfc_hrb_pool, dma_buf->hbuf.virt,
         dma_buf->hbuf.phys);
  kfree(dma_buf);
  return ((void*)0);
 }
 dma_buf->total_size = LPFC_NVMET_DATA_BUF_SIZE;
 return dma_buf;
}
