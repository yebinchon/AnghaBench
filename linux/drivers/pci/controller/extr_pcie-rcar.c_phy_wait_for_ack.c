
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int H1_PCIEPHYADRR ;
 int PHY_ACK ;
 int dev_err (struct device*,char*) ;
 int rcar_pci_read_reg (struct rcar_pcie*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int phy_wait_for_ack(struct rcar_pcie *pcie)
{
 struct device *dev = pcie->dev;
 unsigned int timeout = 100;

 while (timeout--) {
  if (rcar_pci_read_reg(pcie, H1_PCIEPHYADRR) & PHY_ACK)
   return 0;

  udelay(100);
 }

 dev_err(dev, "Access to PCIe phy timed out\n");

 return -ETIMEDOUT;
}
