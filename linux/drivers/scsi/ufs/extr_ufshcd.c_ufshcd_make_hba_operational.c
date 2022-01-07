
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_hba {int dev; int utmrdl_dma_addr; int utrdl_dma_addr; scalar_t__ nutrs; } ;


 int EIO ;
 int INT_AGGR_DEF_TO ;
 int REG_CONTROLLER_STATUS ;
 int REG_UTP_TASK_REQ_LIST_BASE_H ;
 int REG_UTP_TASK_REQ_LIST_BASE_L ;
 int REG_UTP_TRANSFER_REQ_LIST_BASE_H ;
 int REG_UTP_TRANSFER_REQ_LIST_BASE_L ;
 int UFSHCD_ENABLE_INTRS ;
 int dev_err (int ,char*) ;
 int lower_32_bits (int ) ;
 int ufshcd_config_intr_aggr (struct ufs_hba*,scalar_t__,int ) ;
 int ufshcd_disable_intr_aggr (struct ufs_hba*) ;
 int ufshcd_enable_intr (struct ufs_hba*,int ) ;
 int ufshcd_enable_run_stop_reg (struct ufs_hba*) ;
 int ufshcd_get_lists_status (int ) ;
 scalar_t__ ufshcd_is_intr_aggr_allowed (struct ufs_hba*) ;
 int ufshcd_readl (struct ufs_hba*,int ) ;
 int ufshcd_writel (struct ufs_hba*,int ,int ) ;
 int upper_32_bits (int ) ;
 int wmb () ;

__attribute__((used)) static int ufshcd_make_hba_operational(struct ufs_hba *hba)
{
 int err = 0;
 u32 reg;


 ufshcd_enable_intr(hba, UFSHCD_ENABLE_INTRS);


 if (ufshcd_is_intr_aggr_allowed(hba))
  ufshcd_config_intr_aggr(hba, hba->nutrs - 1, INT_AGGR_DEF_TO);
 else
  ufshcd_disable_intr_aggr(hba);


 ufshcd_writel(hba, lower_32_bits(hba->utrdl_dma_addr),
   REG_UTP_TRANSFER_REQ_LIST_BASE_L);
 ufshcd_writel(hba, upper_32_bits(hba->utrdl_dma_addr),
   REG_UTP_TRANSFER_REQ_LIST_BASE_H);
 ufshcd_writel(hba, lower_32_bits(hba->utmrdl_dma_addr),
   REG_UTP_TASK_REQ_LIST_BASE_L);
 ufshcd_writel(hba, upper_32_bits(hba->utmrdl_dma_addr),
   REG_UTP_TASK_REQ_LIST_BASE_H);





 wmb();




 reg = ufshcd_readl(hba, REG_CONTROLLER_STATUS);
 if (!(ufshcd_get_lists_status(reg))) {
  ufshcd_enable_run_stop_reg(hba);
 } else {
  dev_err(hba->dev,
   "Host controller not ready to process requests");
  err = -EIO;
  goto out;
 }

out:
 return err;
}
