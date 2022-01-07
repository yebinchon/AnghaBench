
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_epf_header {int vendorid; int deviceid; int subclass_code; int baseclass_code; int subsys_vendor_id; int subsys_id; int interrupt_pin; int cache_line_size; int progif_code; int revid; } ;
struct pci_epc {int dummy; } ;
struct dw_pcie_ep {int dummy; } ;
struct dw_pcie {int dummy; } ;


 int PCI_CACHE_LINE_SIZE ;
 int PCI_CLASS_DEVICE ;
 int PCI_CLASS_PROG ;
 int PCI_DEVICE_ID ;
 int PCI_INTERRUPT_PIN ;
 int PCI_REVISION_ID ;
 int PCI_SUBSYSTEM_ID ;
 int PCI_SUBSYSTEM_VENDOR_ID ;
 int PCI_VENDOR_ID ;
 int dw_pcie_dbi_ro_wr_dis (struct dw_pcie*) ;
 int dw_pcie_dbi_ro_wr_en (struct dw_pcie*) ;
 int dw_pcie_writeb_dbi (struct dw_pcie*,int ,int ) ;
 int dw_pcie_writew_dbi (struct dw_pcie*,int ,int) ;
 struct dw_pcie_ep* epc_get_drvdata (struct pci_epc*) ;
 struct dw_pcie* to_dw_pcie_from_ep (struct dw_pcie_ep*) ;

__attribute__((used)) static int dw_pcie_ep_write_header(struct pci_epc *epc, u8 func_no,
       struct pci_epf_header *hdr)
{
 struct dw_pcie_ep *ep = epc_get_drvdata(epc);
 struct dw_pcie *pci = to_dw_pcie_from_ep(ep);

 dw_pcie_dbi_ro_wr_en(pci);
 dw_pcie_writew_dbi(pci, PCI_VENDOR_ID, hdr->vendorid);
 dw_pcie_writew_dbi(pci, PCI_DEVICE_ID, hdr->deviceid);
 dw_pcie_writeb_dbi(pci, PCI_REVISION_ID, hdr->revid);
 dw_pcie_writeb_dbi(pci, PCI_CLASS_PROG, hdr->progif_code);
 dw_pcie_writew_dbi(pci, PCI_CLASS_DEVICE,
      hdr->subclass_code | hdr->baseclass_code << 8);
 dw_pcie_writeb_dbi(pci, PCI_CACHE_LINE_SIZE,
      hdr->cache_line_size);
 dw_pcie_writew_dbi(pci, PCI_SUBSYSTEM_VENDOR_ID,
      hdr->subsys_vendor_id);
 dw_pcie_writew_dbi(pci, PCI_SUBSYSTEM_ID, hdr->subsys_id);
 dw_pcie_writeb_dbi(pci, PCI_INTERRUPT_PIN,
      hdr->interrupt_pin);
 dw_pcie_dbi_ro_wr_dis(pci);

 return 0;
}
