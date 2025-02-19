
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENOENT ;
 int PCI_VPD_LRDT ;
 int PCI_VPD_LRDT_TAG_SIZE ;
 int PCI_VPD_SRDT_END ;
 int PCI_VPD_SRDT_LEN_MASK ;
 scalar_t__ PCI_VPD_SRDT_TAG_SIZE ;
 scalar_t__ pci_vpd_lrdt_size (int const*) ;
 scalar_t__ pci_vpd_srdt_size (int const*) ;

int pci_vpd_find_tag(const u8 *buf, unsigned int off, unsigned int len, u8 rdt)
{
 int i;

 for (i = off; i < len; ) {
  u8 val = buf[i];

  if (val & PCI_VPD_LRDT) {

   if (i + PCI_VPD_LRDT_TAG_SIZE > len)
    break;

   if (val == rdt)
    return i;

   i += PCI_VPD_LRDT_TAG_SIZE +
        pci_vpd_lrdt_size(&buf[i]);
  } else {
   u8 tag = val & ~PCI_VPD_SRDT_LEN_MASK;

   if (tag == rdt)
    return i;

   if (tag == PCI_VPD_SRDT_END)
    break;

   i += PCI_VPD_SRDT_TAG_SIZE +
        pci_vpd_srdt_size(&buf[i]);
  }
 }

 return -ENOENT;
}
