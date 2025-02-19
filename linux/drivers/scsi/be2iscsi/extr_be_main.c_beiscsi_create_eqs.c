
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hwi_context_memory {TYPE_2__* be_eq; } ;
struct TYPE_4__ {int num_eq_entries; } ;
struct beiscsi_hba {int num_cpus; TYPE_3__* pcidev; int ctrl; TYPE_1__ params; } ;
struct be_dma_mem {int dma; void* va; } ;
struct be_queue_info {struct be_dma_mem dma_mem; int id; } ;
struct be_eq_entry {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int dev; scalar_t__ msix_enabled; } ;
struct TYPE_5__ {struct be_queue_info q; struct beiscsi_hba* phba; } ;


 int BEISCSI_EQ_DELAY_DEF ;
 int BEISCSI_LOG_INIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 unsigned int PAGES_REQUIRED (int) ;
 unsigned int PAGE_SIZE ;
 int be_fill_queue (struct be_queue_info*,int,int,void*) ;
 int beiscsi_cmd_eq_create (int *,struct be_queue_info*,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,...) ;
 void* dma_alloc_coherent (int *,unsigned int,int *,int ) ;
 int dma_free_coherent (int *,unsigned int,void*,int ) ;

__attribute__((used)) static int beiscsi_create_eqs(struct beiscsi_hba *phba,
        struct hwi_context_memory *phwi_context)
{
 int ret = -ENOMEM, eq_for_mcc;
 unsigned int i, num_eq_pages;
 struct be_queue_info *eq;
 struct be_dma_mem *mem;
 void *eq_vaddress;
 dma_addr_t paddr;

 num_eq_pages = PAGES_REQUIRED(phba->params.num_eq_entries * sizeof(struct be_eq_entry));


 if (phba->pcidev->msix_enabled)
  eq_for_mcc = 1;
 else
  eq_for_mcc = 0;
 for (i = 0; i < (phba->num_cpus + eq_for_mcc); i++) {
  eq = &phwi_context->be_eq[i].q;
  mem = &eq->dma_mem;
  phwi_context->be_eq[i].phba = phba;
  eq_vaddress = dma_alloc_coherent(&phba->pcidev->dev,
         num_eq_pages * PAGE_SIZE,
         &paddr, GFP_KERNEL);
  if (!eq_vaddress) {
   ret = -ENOMEM;
   goto create_eq_error;
  }

  mem->va = eq_vaddress;
  ret = be_fill_queue(eq, phba->params.num_eq_entries,
        sizeof(struct be_eq_entry), eq_vaddress);
  if (ret) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BM_%d : be_fill_queue Failed for EQ\n");
   goto create_eq_error;
  }

  mem->dma = paddr;
  ret = beiscsi_cmd_eq_create(&phba->ctrl, eq,
         BEISCSI_EQ_DELAY_DEF);
  if (ret) {
   beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_INIT,
        "BM_%d : beiscsi_cmd_eq_create"
        "Failed for EQ\n");
   goto create_eq_error;
  }

  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_INIT,
       "BM_%d : eqid = %d\n",
       phwi_context->be_eq[i].q.id);
 }
 return 0;

create_eq_error:
 for (i = 0; i < (phba->num_cpus + eq_for_mcc); i++) {
  eq = &phwi_context->be_eq[i].q;
  mem = &eq->dma_mem;
  if (mem->va)
   dma_free_coherent(&phba->pcidev->dev, num_eq_pages
         * PAGE_SIZE,
         mem->va, mem->dma);
 }
 return ret;
}
