
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xvcu_device {int dev; int vcu_slcr_ba; } ;


 int ETIMEDOUT ;
 int VCU_PLL_CTRL ;
 int VCU_PLL_CTRL_BYPASS_MASK ;
 int VCU_PLL_CTRL_BYPASS_SHIFT ;
 int VCU_PLL_CTRL_RESET_MASK ;
 int VCU_PLL_CTRL_RESET_SHIFT ;
 int VCU_PLL_STATUS ;
 int VCU_PLL_STATUS_LOCK_STATUS_MASK ;
 int dev_err (int ,char*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 int time_after (unsigned long,unsigned long) ;
 int xvcu_read (int ,int ) ;
 int xvcu_set_vcu_pll_info (struct xvcu_device*) ;
 int xvcu_write_field_reg (int ,int ,int,int ,int ) ;

__attribute__((used)) static int xvcu_set_pll(struct xvcu_device *xvcu)
{
 u32 lock_status;
 unsigned long timeout;
 int ret;

 ret = xvcu_set_vcu_pll_info(xvcu);
 if (ret) {
  dev_err(xvcu->dev, "failed to set pll info\n");
  return ret;
 }

 xvcu_write_field_reg(xvcu->vcu_slcr_ba, VCU_PLL_CTRL,
        1, VCU_PLL_CTRL_BYPASS_MASK,
        VCU_PLL_CTRL_BYPASS_SHIFT);
 xvcu_write_field_reg(xvcu->vcu_slcr_ba, VCU_PLL_CTRL,
        1, VCU_PLL_CTRL_RESET_MASK,
        VCU_PLL_CTRL_RESET_SHIFT);
 xvcu_write_field_reg(xvcu->vcu_slcr_ba, VCU_PLL_CTRL,
        0, VCU_PLL_CTRL_RESET_MASK,
        VCU_PLL_CTRL_RESET_SHIFT);




 timeout = jiffies + msecs_to_jiffies(2000);
 do {
  lock_status = xvcu_read(xvcu->vcu_slcr_ba, VCU_PLL_STATUS);
  if (lock_status & VCU_PLL_STATUS_LOCK_STATUS_MASK) {
   xvcu_write_field_reg(xvcu->vcu_slcr_ba, VCU_PLL_CTRL,
          0, VCU_PLL_CTRL_BYPASS_MASK,
          VCU_PLL_CTRL_BYPASS_SHIFT);
   return 0;
  }
 } while (!time_after(jiffies, timeout));


 dev_err(xvcu->dev, "PLL is not locked\n");
 return -ETIMEDOUT;
}
