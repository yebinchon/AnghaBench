
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_pcie {int dummy; } ;
struct device {int dummy; } ;


 int CFINIT ;
 int DL_DOWN ;
 int PCIETCTLR ;
 int PMSR ;
 struct rcar_pcie* dev_get_drvdata (struct device*) ;
 int rcar_pci_read_reg (struct rcar_pcie*,int ) ;
 int rcar_pci_write_reg (struct rcar_pcie*,int ,int ) ;
 int rcar_pcie_wait_for_dl (struct rcar_pcie*) ;

__attribute__((used)) static int rcar_pcie_resume_noirq(struct device *dev)
{
 struct rcar_pcie *pcie = dev_get_drvdata(dev);

 if (rcar_pci_read_reg(pcie, PMSR) &&
     !(rcar_pci_read_reg(pcie, PCIETCTLR) & DL_DOWN))
  return 0;


 rcar_pci_write_reg(pcie, CFINIT, PCIETCTLR);
 return rcar_pcie_wait_for_dl(pcie);
}
