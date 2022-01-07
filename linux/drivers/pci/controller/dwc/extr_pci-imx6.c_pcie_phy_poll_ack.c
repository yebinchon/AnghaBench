
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {int dummy; } ;


 int ETIMEDOUT ;
 int PCIE_PHY_STAT ;
 int PCIE_PHY_STAT_ACK ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int pcie_phy_poll_ack(struct imx6_pcie *imx6_pcie, bool exp_val)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 bool val;
 u32 max_iterations = 10;
 u32 wait_counter = 0;

 do {
  val = dw_pcie_readl_dbi(pci, PCIE_PHY_STAT) &
   PCIE_PHY_STAT_ACK;
  wait_counter++;

  if (val == exp_val)
   return 0;

  udelay(1);
 } while (wait_counter < max_iterations);

 return -ETIMEDOUT;
}
