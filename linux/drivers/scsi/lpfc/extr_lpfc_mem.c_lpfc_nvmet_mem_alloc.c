
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_hba {int lpfc_nvmet_drb_pool; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_NVMET_DATA_BUF_SIZE ;
 int SGL_ALIGN_SZ ;
 int dma_pool_create (char*,int *,int ,int ,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;

int
lpfc_nvmet_mem_alloc(struct lpfc_hba *phba)
{
 phba->lpfc_nvmet_drb_pool =
  dma_pool_create("lpfc_nvmet_drb_pool",
    &phba->pcidev->dev, LPFC_NVMET_DATA_BUF_SIZE,
    SGL_ALIGN_SZ, 0);
 if (!phba->lpfc_nvmet_drb_pool) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "6024 Can't enable NVME Target - no memory\n");
  return -ENOMEM;
 }
 return 0;
}
