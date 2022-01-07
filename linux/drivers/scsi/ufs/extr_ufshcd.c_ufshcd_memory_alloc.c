
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utp_transfer_req_desc {int dummy; } ;
struct utp_transfer_cmd_desc {int dummy; } ;
struct utp_task_req_desc {int dummy; } ;
struct ufshcd_lrb {int dummy; } ;
struct ufs_hba {int nutrs; int ucdl_dma_addr; int utrdl_dma_addr; int nutmrs; int utmrdl_dma_addr; int dev; int lrb; void* utmrdl_base_addr; void* utrdl_base_addr; void* ucdl_base_addr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ WARN_ON (int) ;
 int dev_err (int ,char*) ;
 int devm_kcalloc (int ,int,int,int ) ;
 void* dmam_alloc_coherent (int ,size_t,int*,int ) ;

__attribute__((used)) static int ufshcd_memory_alloc(struct ufs_hba *hba)
{
 size_t utmrdl_size, utrdl_size, ucdl_size;


 ucdl_size = (sizeof(struct utp_transfer_cmd_desc) * hba->nutrs);
 hba->ucdl_base_addr = dmam_alloc_coherent(hba->dev,
        ucdl_size,
        &hba->ucdl_dma_addr,
        GFP_KERNEL);







 if (!hba->ucdl_base_addr ||
     WARN_ON(hba->ucdl_dma_addr & (PAGE_SIZE - 1))) {
  dev_err(hba->dev,
   "Command Descriptor Memory allocation failed\n");
  goto out;
 }





 utrdl_size = (sizeof(struct utp_transfer_req_desc) * hba->nutrs);
 hba->utrdl_base_addr = dmam_alloc_coherent(hba->dev,
         utrdl_size,
         &hba->utrdl_dma_addr,
         GFP_KERNEL);
 if (!hba->utrdl_base_addr ||
     WARN_ON(hba->utrdl_dma_addr & (PAGE_SIZE - 1))) {
  dev_err(hba->dev,
   "Transfer Descriptor Memory allocation failed\n");
  goto out;
 }





 utmrdl_size = sizeof(struct utp_task_req_desc) * hba->nutmrs;
 hba->utmrdl_base_addr = dmam_alloc_coherent(hba->dev,
          utmrdl_size,
          &hba->utmrdl_dma_addr,
          GFP_KERNEL);
 if (!hba->utmrdl_base_addr ||
     WARN_ON(hba->utmrdl_dma_addr & (PAGE_SIZE - 1))) {
  dev_err(hba->dev,
  "Task Management Descriptor Memory allocation failed\n");
  goto out;
 }


 hba->lrb = devm_kcalloc(hba->dev,
    hba->nutrs, sizeof(struct ufshcd_lrb),
    GFP_KERNEL);
 if (!hba->lrb) {
  dev_err(hba->dev, "LRB Memory allocation failed\n");
  goto out;
 }
 return 0;
out:
 return -ENOMEM;
}
