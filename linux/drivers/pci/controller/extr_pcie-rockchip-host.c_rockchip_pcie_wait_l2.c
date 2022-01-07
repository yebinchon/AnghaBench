
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {int dev; scalar_t__ apb_base; scalar_t__ msg_region; } ;


 int HZ ;
 scalar_t__ PCIE_CLIENT_DEBUG_OUT_0 ;
 int PCIE_LINK_IS_L2 (int ) ;
 scalar_t__ PCIE_RC_SEND_PME_OFF ;
 int dev_err (int ,char*) ;
 int jiffies_to_usecs (int) ;
 int readl_poll_timeout (scalar_t__,int ,int ,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int rockchip_pcie_wait_l2(struct rockchip_pcie *rockchip)
{
 u32 value;
 int err;


 writel(0x0, rockchip->msg_region + PCIE_RC_SEND_PME_OFF);


 err = readl_poll_timeout(rockchip->apb_base + PCIE_CLIENT_DEBUG_OUT_0,
     value, PCIE_LINK_IS_L2(value), 20,
     jiffies_to_usecs(5 * HZ));
 if (err) {
  dev_err(rockchip->dev, "PCIe link enter L2 timeout!\n");
  return err;
 }

 return 0;
}
