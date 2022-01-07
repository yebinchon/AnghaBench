
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rockchip_pcie {struct device* dev; } ;
struct device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int PCIE_CLIENT_INT_CORR_ERR ;
 int PCIE_CLIENT_INT_DPA ;
 int PCIE_CLIENT_INT_FATAL_ERR ;
 int PCIE_CLIENT_INT_HOT_RST ;
 int PCIE_CLIENT_INT_LEGACY_DONE ;
 int PCIE_CLIENT_INT_MSG ;
 int PCIE_CLIENT_INT_NFATAL_ERR ;
 int PCIE_CLIENT_INT_PHY ;
 int PCIE_CLIENT_INT_STATUS ;
 int dev_dbg (struct device*,char*) ;
 int rockchip_pcie_read (struct rockchip_pcie*,int ) ;
 int rockchip_pcie_write (struct rockchip_pcie*,int,int ) ;

__attribute__((used)) static irqreturn_t rockchip_pcie_client_irq_handler(int irq, void *arg)
{
 struct rockchip_pcie *rockchip = arg;
 struct device *dev = rockchip->dev;
 u32 reg;

 reg = rockchip_pcie_read(rockchip, PCIE_CLIENT_INT_STATUS);
 if (reg & PCIE_CLIENT_INT_LEGACY_DONE)
  dev_dbg(dev, "legacy done interrupt received\n");

 if (reg & PCIE_CLIENT_INT_MSG)
  dev_dbg(dev, "message done interrupt received\n");

 if (reg & PCIE_CLIENT_INT_HOT_RST)
  dev_dbg(dev, "hot reset interrupt received\n");

 if (reg & PCIE_CLIENT_INT_DPA)
  dev_dbg(dev, "dpa interrupt received\n");

 if (reg & PCIE_CLIENT_INT_FATAL_ERR)
  dev_dbg(dev, "fatal error interrupt received\n");

 if (reg & PCIE_CLIENT_INT_NFATAL_ERR)
  dev_dbg(dev, "no fatal error interrupt received\n");

 if (reg & PCIE_CLIENT_INT_CORR_ERR)
  dev_dbg(dev, "correctable error interrupt received\n");

 if (reg & PCIE_CLIENT_INT_PHY)
  dev_dbg(dev, "phy interrupt received\n");

 rockchip_pcie_write(rockchip, reg & (PCIE_CLIENT_INT_LEGACY_DONE |
         PCIE_CLIENT_INT_MSG | PCIE_CLIENT_INT_HOT_RST |
         PCIE_CLIENT_INT_DPA | PCIE_CLIENT_INT_FATAL_ERR |
         PCIE_CLIENT_INT_NFATAL_ERR |
         PCIE_CLIENT_INT_CORR_ERR |
         PCIE_CLIENT_INT_PHY),
     PCIE_CLIENT_INT_STATUS);

 return IRQ_HANDLED;
}
