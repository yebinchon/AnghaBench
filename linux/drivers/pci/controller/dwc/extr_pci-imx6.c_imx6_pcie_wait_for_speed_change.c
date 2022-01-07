
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx6_pcie {struct dw_pcie* pci; } ;
struct dw_pcie {struct device* dev; } ;
struct device {int dummy; } ;


 int ETIMEDOUT ;
 int PCIE_LINK_WIDTH_SPEED_CONTROL ;
 int PORT_LOGIC_SPEED_CHANGE ;
 int dev_err (struct device*,char*) ;
 int dw_pcie_readl_dbi (struct dw_pcie*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int imx6_pcie_wait_for_speed_change(struct imx6_pcie *imx6_pcie)
{
 struct dw_pcie *pci = imx6_pcie->pci;
 struct device *dev = pci->dev;
 u32 tmp;
 unsigned int retries;

 for (retries = 0; retries < 200; retries++) {
  tmp = dw_pcie_readl_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL);

  if (!(tmp & PORT_LOGIC_SPEED_CHANGE))
   return 0;
  usleep_range(100, 1000);
 }

 dev_err(dev, "Speed change timeout\n");
 return -ETIMEDOUT;
}
