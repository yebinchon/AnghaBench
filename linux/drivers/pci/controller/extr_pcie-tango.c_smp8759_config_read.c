
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tango_pcie {scalar_t__ base; } ;
struct pci_config_window {int parent; } ;
struct pci_bus {struct pci_config_window* sysdata; } ;


 int PCIBIOS_FUNC_NOT_SUPPORTED ;
 scalar_t__ SMP8759_MUX ;
 struct tango_pcie* dev_get_drvdata (int ) ;
 int pci_generic_config_read (struct pci_bus*,unsigned int,int,int,int *) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int smp8759_config_read(struct pci_bus *bus, unsigned int devfn,
          int where, int size, u32 *val)
{
 struct pci_config_window *cfg = bus->sysdata;
 struct tango_pcie *pcie = dev_get_drvdata(cfg->parent);
 int ret;


 if (devfn != 0)
  return PCIBIOS_FUNC_NOT_SUPPORTED;






 writel_relaxed(1, pcie->base + SMP8759_MUX);
 ret = pci_generic_config_read(bus, devfn, where, size, val);
 writel_relaxed(0, pcie->base + SMP8759_MUX);

 return ret;
}
