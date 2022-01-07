
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct faraday_pci {scalar_t__ base; } ;


 int PCIBIOS_SUCCESSFUL ;
 scalar_t__ PCI_CONFIG ;
 int PCI_CONF_BUS (int) ;
 int PCI_CONF_DEVICE (int ) ;
 int PCI_CONF_ENABLE ;
 int PCI_CONF_FUNCTION (int ) ;
 int PCI_CONF_WHERE (int) ;
 scalar_t__ PCI_DATA ;
 int PCI_FUNC (unsigned int) ;
 int PCI_SLOT (unsigned int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int faraday_raw_pci_read_config(struct faraday_pci *p, int bus_number,
           unsigned int fn, int config, int size,
           u32 *value)
{
 writel(PCI_CONF_BUS(bus_number) |
   PCI_CONF_DEVICE(PCI_SLOT(fn)) |
   PCI_CONF_FUNCTION(PCI_FUNC(fn)) |
   PCI_CONF_WHERE(config) |
   PCI_CONF_ENABLE,
   p->base + PCI_CONFIG);

 *value = readl(p->base + PCI_DATA);

 if (size == 1)
  *value = (*value >> (8 * (config & 3))) & 0xFF;
 else if (size == 2)
  *value = (*value >> (8 * (config & 3))) & 0xFFFF;

 return PCIBIOS_SUCCESSFUL;
}
