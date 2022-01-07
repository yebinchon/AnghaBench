
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_hba {int capabilities; int nutrs; int nutmrs; } ;


 int MASK_TASK_MANAGEMENT_REQUEST_SLOTS ;
 int MASK_TRANSFER_REQUESTS_SLOTS ;
 int REG_CONTROLLER_CAPABILITIES ;
 int ufshcd_readl (struct ufs_hba*,int ) ;

__attribute__((used)) static inline void ufshcd_hba_capabilities(struct ufs_hba *hba)
{
 hba->capabilities = ufshcd_readl(hba, REG_CONTROLLER_CAPABILITIES);


 hba->nutrs = (hba->capabilities & MASK_TRANSFER_REQUESTS_SLOTS) + 1;
 hba->nutmrs =
 ((hba->capabilities & MASK_TASK_MANAGEMENT_REQUEST_SLOTS) >> 16) + 1;
}
