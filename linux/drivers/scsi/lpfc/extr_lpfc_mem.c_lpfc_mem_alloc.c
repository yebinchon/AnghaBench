
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct lpfc_nodelist {int dummy; } ;
struct lpfc_node_rrq {int dummy; } ;
struct lpfc_dma_pool {TYPE_2__* elements; scalar_t__ current_count; scalar_t__ max_count; } ;
struct lpfc_hba {scalar_t__ sli_rev; int * lpfc_mbuf_pool; int * mbox_mem_pool; int * nlp_mem_pool; int * rrq_pool; int * lpfc_hrb_pool; int * lpfc_drb_pool; int * device_data_mem_pool; scalar_t__ cfg_EnableXLane; int * lpfc_hbq_pool; TYPE_1__* pcidev; struct lpfc_dma_pool lpfc_mbuf_safety_pool; } ;
struct lpfc_dmabuf {int dummy; } ;
struct lpfc_device_data {int dummy; } ;
struct TYPE_5__ {int phys; int virt; } ;
struct TYPE_4__ {int dev; } ;
typedef int LPFC_MBOXQ_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LPFC_BPL_SIZE ;
 int LPFC_DATA_BUF_SIZE ;
 int LPFC_DEVICE_DATA_POOL_SIZE ;
 int LPFC_HDR_BUF_SIZE ;
 int LPFC_MBUF_POOL_SIZE ;
 int LPFC_MEM_POOL_SIZE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int dma_pool_alloc (int *,int ,int *) ;
 void* dma_pool_create (char*,int *,int ,int,int ) ;
 int dma_pool_destroy (int *) ;
 int dma_pool_free (int *,int ,int ) ;
 int kfree (TYPE_2__*) ;
 TYPE_2__* kmalloc_array (int,int,int ) ;
 void* mempool_create_kmalloc_pool (int ,int) ;
 int mempool_destroy (int *) ;

int
lpfc_mem_alloc(struct lpfc_hba *phba, int align)
{
 struct lpfc_dma_pool *pool = &phba->lpfc_mbuf_safety_pool;
 int i;


 phba->lpfc_mbuf_pool = dma_pool_create("lpfc_mbuf_pool", &phba->pcidev->dev,
       LPFC_BPL_SIZE,
       align, 0);
 if (!phba->lpfc_mbuf_pool)
  goto fail;

 pool->elements = kmalloc_array(LPFC_MBUF_POOL_SIZE,
           sizeof(struct lpfc_dmabuf),
           GFP_KERNEL);
 if (!pool->elements)
  goto fail_free_lpfc_mbuf_pool;

 pool->max_count = 0;
 pool->current_count = 0;
 for ( i = 0; i < LPFC_MBUF_POOL_SIZE; i++) {
  pool->elements[i].virt = dma_pool_alloc(phba->lpfc_mbuf_pool,
           GFP_KERNEL, &pool->elements[i].phys);
  if (!pool->elements[i].virt)
   goto fail_free_mbuf_pool;
  pool->max_count++;
  pool->current_count++;
 }

 phba->mbox_mem_pool = mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
        sizeof(LPFC_MBOXQ_t));
 if (!phba->mbox_mem_pool)
  goto fail_free_mbuf_pool;

 phba->nlp_mem_pool = mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
      sizeof(struct lpfc_nodelist));
 if (!phba->nlp_mem_pool)
  goto fail_free_mbox_pool;

 if (phba->sli_rev == LPFC_SLI_REV4) {
  phba->rrq_pool =
   mempool_create_kmalloc_pool(LPFC_MEM_POOL_SIZE,
      sizeof(struct lpfc_node_rrq));
  if (!phba->rrq_pool)
   goto fail_free_nlp_mem_pool;
  phba->lpfc_hrb_pool = dma_pool_create("lpfc_hrb_pool",
           &phba->pcidev->dev,
           LPFC_HDR_BUF_SIZE, align, 0);
  if (!phba->lpfc_hrb_pool)
   goto fail_free_rrq_mem_pool;

  phba->lpfc_drb_pool = dma_pool_create("lpfc_drb_pool",
           &phba->pcidev->dev,
           LPFC_DATA_BUF_SIZE, align, 0);
  if (!phba->lpfc_drb_pool)
   goto fail_free_hrb_pool;
  phba->lpfc_hbq_pool = ((void*)0);
 } else {
  phba->lpfc_hbq_pool = dma_pool_create("lpfc_hbq_pool",
   &phba->pcidev->dev, LPFC_BPL_SIZE, align, 0);
  if (!phba->lpfc_hbq_pool)
   goto fail_free_nlp_mem_pool;
  phba->lpfc_hrb_pool = ((void*)0);
  phba->lpfc_drb_pool = ((void*)0);
 }

 if (phba->cfg_EnableXLane) {
  phba->device_data_mem_pool = mempool_create_kmalloc_pool(
     LPFC_DEVICE_DATA_POOL_SIZE,
     sizeof(struct lpfc_device_data));
  if (!phba->device_data_mem_pool)
   goto fail_free_drb_pool;
 } else {
  phba->device_data_mem_pool = ((void*)0);
 }

 return 0;
fail_free_drb_pool:
 dma_pool_destroy(phba->lpfc_drb_pool);
 phba->lpfc_drb_pool = ((void*)0);
 fail_free_hrb_pool:
 dma_pool_destroy(phba->lpfc_hrb_pool);
 phba->lpfc_hrb_pool = ((void*)0);
 fail_free_rrq_mem_pool:
 mempool_destroy(phba->rrq_pool);
 phba->rrq_pool = ((void*)0);
 fail_free_nlp_mem_pool:
 mempool_destroy(phba->nlp_mem_pool);
 phba->nlp_mem_pool = ((void*)0);
 fail_free_mbox_pool:
 mempool_destroy(phba->mbox_mem_pool);
 phba->mbox_mem_pool = ((void*)0);
 fail_free_mbuf_pool:
 while (i--)
  dma_pool_free(phba->lpfc_mbuf_pool, pool->elements[i].virt,
       pool->elements[i].phys);
 kfree(pool->elements);
 fail_free_lpfc_mbuf_pool:
 dma_pool_destroy(phba->lpfc_mbuf_pool);
 phba->lpfc_mbuf_pool = ((void*)0);
 fail:
 return -ENOMEM;
}
