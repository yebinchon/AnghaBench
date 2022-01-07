
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dw_pcie {int dev; } ;


 int ETIMEDOUT ;
 int LINK_WAIT_MAX_RETRIES ;
 int LINK_WAIT_USLEEP_MAX ;
 int LINK_WAIT_USLEEP_MIN ;
 int dev_info (int ,char*) ;
 scalar_t__ dw_pcie_link_up (struct dw_pcie*) ;
 int usleep_range (int ,int ) ;

int dw_pcie_wait_for_link(struct dw_pcie *pci)
{
 int retries;


 for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
  if (dw_pcie_link_up(pci)) {
   dev_info(pci->dev, "Link up\n");
   return 0;
  }
  usleep_range(LINK_WAIT_USLEEP_MIN, LINK_WAIT_USLEEP_MAX);
 }

 dev_info(pci->dev, "Phy link never came up\n");

 return -ETIMEDOUT;
}
