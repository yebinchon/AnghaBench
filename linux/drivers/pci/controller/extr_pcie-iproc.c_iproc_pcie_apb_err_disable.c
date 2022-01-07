
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_bus {scalar_t__ number; } ;
struct iproc_pcie {scalar_t__ has_apb_err_disable; } ;


 int APB_ERR_EN ;
 int IPROC_PCIE_APB_ERR_EN ;
 struct iproc_pcie* iproc_data (struct pci_bus*) ;
 int iproc_pcie_read_reg (struct iproc_pcie*,int ) ;
 int iproc_pcie_write_reg (struct iproc_pcie*,int ,int ) ;

__attribute__((used)) static inline void iproc_pcie_apb_err_disable(struct pci_bus *bus,
           bool disable)
{
 struct iproc_pcie *pcie = iproc_data(bus);
 u32 val;

 if (bus->number && pcie->has_apb_err_disable) {
  val = iproc_pcie_read_reg(pcie, IPROC_PCIE_APB_ERR_EN);
  if (disable)
   val &= ~APB_ERR_EN;
  else
   val |= APB_ERR_EN;
  iproc_pcie_write_reg(pcie, IPROC_PCIE_APB_ERR_EN, val);
 }
}
