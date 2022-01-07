
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XEN_PCI_ERR_access_denied ;
 int XEN_PCI_ERR_dev_not_found ;
 int XEN_PCI_ERR_invalid_offset ;
 int XEN_PCI_ERR_not_implemented ;
 int XEN_PCI_ERR_success ;

__attribute__((used)) static int xen_pcibios_err_to_errno(int err)
{
 switch (err) {
 case 128:
  return XEN_PCI_ERR_success;
 case 131:
  return XEN_PCI_ERR_dev_not_found;
 case 132:
  return XEN_PCI_ERR_invalid_offset;
 case 130:
  return XEN_PCI_ERR_not_implemented;
 case 129:
  return XEN_PCI_ERR_access_denied;
 }
 return err;
}
