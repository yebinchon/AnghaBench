
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct faraday_pci {scalar_t__ base; } ;


 int PCIBIOS_BAD_REGISTER_NUMBER ;
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
 int writeb (int,int ) ;
 int writel (int,scalar_t__) ;
 int writew (int,int ) ;

__attribute__((used)) static int faraday_raw_pci_write_config(struct faraday_pci *p, int bus_number,
      unsigned int fn, int config, int size,
      u32 value)
{
 int ret = PCIBIOS_SUCCESSFUL;

 writel(PCI_CONF_BUS(bus_number) |
   PCI_CONF_DEVICE(PCI_SLOT(fn)) |
   PCI_CONF_FUNCTION(PCI_FUNC(fn)) |
   PCI_CONF_WHERE(config) |
   PCI_CONF_ENABLE,
   p->base + PCI_CONFIG);

 switch (size) {
 case 4:
  writel(value, p->base + PCI_DATA);
  break;
 case 2:
  writew(value, p->base + PCI_DATA + (config & 3));
  break;
 case 1:
  writeb(value, p->base + PCI_DATA + (config & 3));
  break;
 default:
  ret = PCIBIOS_BAD_REGISTER_NUMBER;
 }

 return ret;
}
