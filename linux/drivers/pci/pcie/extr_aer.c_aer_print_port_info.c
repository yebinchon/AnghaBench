
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int bus; } ;
struct aer_err_info {int id; size_t severity; scalar_t__ multi_error_valid; } ;


 int PCI_FUNC (int) ;
 int PCI_SLOT (int) ;
 int * aer_error_severity_string ;
 int pci_domain_nr (int ) ;
 int pci_info (struct pci_dev*,char*,char*,int ,int ,int,int ,int ) ;

__attribute__((used)) static void aer_print_port_info(struct pci_dev *dev, struct aer_err_info *info)
{
 u8 bus = info->id >> 8;
 u8 devfn = info->id & 0xff;

 pci_info(dev, "%s%s error received: %04x:%02x:%02x.%d\n",
   info->multi_error_valid ? "Multiple " : "",
   aer_error_severity_string[info->severity],
   pci_domain_nr(dev->bus), bus, PCI_SLOT(devfn),
   PCI_FUNC(devfn));
}
