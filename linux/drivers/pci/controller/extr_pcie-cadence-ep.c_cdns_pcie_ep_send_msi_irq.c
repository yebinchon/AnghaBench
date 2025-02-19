
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {int irq_pci_addr; int irq_pci_fn; scalar_t__ irq_cpu_addr; int irq_phys_addr; struct cdns_pcie pcie; } ;


 scalar_t__ CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET ;
 int EINVAL ;
 int GENMASK_ULL (int,int) ;
 scalar_t__ PCI_MSI_ADDRESS_HI ;
 scalar_t__ PCI_MSI_ADDRESS_LO ;
 scalar_t__ PCI_MSI_DATA_64 ;
 scalar_t__ PCI_MSI_FLAGS ;
 int PCI_MSI_FLAGS_ENABLE ;
 int PCI_MSI_FLAGS_QSIZE ;
 int cdns_pcie_ep_fn_readl (struct cdns_pcie*,int,scalar_t__) ;
 int cdns_pcie_ep_fn_readw (struct cdns_pcie*,int,scalar_t__) ;
 int cdns_pcie_set_outbound_region (struct cdns_pcie*,int,int ,int,int ,int,int) ;
 scalar_t__ unlikely (int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
         u8 interrupt_num)
{
 struct cdns_pcie *pcie = &ep->pcie;
 u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
 u16 flags, mme, data, data_mask;
 u8 msi_count;
 u64 pci_addr, pci_addr_mask = 0xff;


 flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
 if (!(flags & PCI_MSI_FLAGS_ENABLE))
  return -EINVAL;


 mme = (flags & PCI_MSI_FLAGS_QSIZE) >> 4;
 msi_count = 1 << mme;
 if (!interrupt_num || interrupt_num > msi_count)
  return -EINVAL;


 data_mask = msi_count - 1;
 data = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_DATA_64);
 data = (data & ~data_mask) | ((interrupt_num - 1) & data_mask);


 pci_addr = cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_HI);
 pci_addr <<= 32;
 pci_addr |= cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_LO);
 pci_addr &= GENMASK_ULL(63, 2);


 if (unlikely(ep->irq_pci_addr != (pci_addr & ~pci_addr_mask) ||
       ep->irq_pci_fn != fn)) {

  cdns_pcie_set_outbound_region(pcie, fn, 0,
           0,
           ep->irq_phys_addr,
           pci_addr & ~pci_addr_mask,
           pci_addr_mask + 1);
  ep->irq_pci_addr = (pci_addr & ~pci_addr_mask);
  ep->irq_pci_fn = fn;
 }
 writel(data, ep->irq_cpu_addr + (pci_addr & pci_addr_mask));

 return 0;
}
