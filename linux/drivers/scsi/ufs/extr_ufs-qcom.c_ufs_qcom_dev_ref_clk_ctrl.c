
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ufs_qcom_host {int is_dev_ref_clk_enabled; scalar_t__ dev_ref_clk_ctrl_mmio; int dev_ref_clk_en_mask; } ;


 int readl_relaxed (scalar_t__) ;
 int udelay (int) ;
 int wmb () ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static void ufs_qcom_dev_ref_clk_ctrl(struct ufs_qcom_host *host, bool enable)
{
 if (host->dev_ref_clk_ctrl_mmio &&
     (enable ^ host->is_dev_ref_clk_enabled)) {
  u32 temp = readl_relaxed(host->dev_ref_clk_ctrl_mmio);

  if (enable)
   temp |= host->dev_ref_clk_en_mask;
  else
   temp &= ~host->dev_ref_clk_en_mask;







  if (!enable)
   udelay(1);

  writel_relaxed(temp, host->dev_ref_clk_ctrl_mmio);


  wmb();






  if (enable)
   udelay(1);

  host->is_dev_ref_clk_enabled = enable;
 }
}
