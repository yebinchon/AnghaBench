
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor; int device; int class_revision; int intpin; void* pref_mem_limit; void* pref_mem_base; void* iolimit; void* iobase; } ;
struct pci_bridge_emul {int has_pcie; int * ops; struct advk_pcie* data; TYPE_1__ conf; } ;
struct advk_pcie {struct pci_bridge_emul bridge; } ;


 int PCIE_CORE_DEV_ID_REG ;
 int PCIE_CORE_DEV_REV_REG ;
 int PCIE_CORE_INT_A_ASSERT_ENABLE ;
 void* PCI_IO_RANGE_TYPE_32 ;
 void* PCI_PREF_RANGE_TYPE_64 ;
 int advk_pci_bridge_emul_ops ;
 int advk_readl (struct advk_pcie*,int ) ;
 int pci_bridge_emul_init (struct pci_bridge_emul*,int ) ;

__attribute__((used)) static void advk_sw_pci_bridge_init(struct advk_pcie *pcie)
{
 struct pci_bridge_emul *bridge = &pcie->bridge;

 bridge->conf.vendor = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) & 0xffff;
 bridge->conf.device = advk_readl(pcie, PCIE_CORE_DEV_ID_REG) >> 16;
 bridge->conf.class_revision =
  advk_readl(pcie, PCIE_CORE_DEV_REV_REG) & 0xff;


 bridge->conf.iobase = PCI_IO_RANGE_TYPE_32;
 bridge->conf.iolimit = PCI_IO_RANGE_TYPE_32;


 bridge->conf.pref_mem_base = PCI_PREF_RANGE_TYPE_64;
 bridge->conf.pref_mem_limit = PCI_PREF_RANGE_TYPE_64;


 bridge->conf.intpin = PCIE_CORE_INT_A_ASSERT_ENABLE;

 bridge->has_pcie = 1;
 bridge->data = pcie;
 bridge->ops = &advk_pci_bridge_emul_ops;

 pci_bridge_emul_init(bridge, 0);

}
