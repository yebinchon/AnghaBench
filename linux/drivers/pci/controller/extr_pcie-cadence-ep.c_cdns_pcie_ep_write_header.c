
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct pci_epf_header {int deviceid; int subclass_code; int baseclass_code; int subsys_id; int subsys_vendor_id; int vendorid; int interrupt_pin; int cache_line_size; int progif_code; int revid; } ;
struct pci_epc {int dummy; } ;
struct cdns_pcie {int dummy; } ;
struct cdns_pcie_ep {struct cdns_pcie pcie; } ;


 int CDNS_PCIE_LM_ID ;
 int CDNS_PCIE_LM_ID_SUBSYS (int ) ;
 int CDNS_PCIE_LM_ID_VENDOR (int ) ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_CLASS_DEVICE ;
 int PCI_CLASS_PROG ;
 int PCI_DEVICE_ID ;
 int PCI_INTERRUPT_PIN ;
 int PCI_REVISION_ID ;
 int PCI_SUBSYSTEM_ID ;
 int cdns_pcie_ep_fn_writeb (struct cdns_pcie*,int ,int ,int ) ;
 int cdns_pcie_ep_fn_writew (struct cdns_pcie*,int ,int ,int) ;
 int cdns_pcie_writel (struct cdns_pcie*,int ,int) ;
 struct cdns_pcie_ep* epc_get_drvdata (struct pci_epc*) ;

__attribute__((used)) static int cdns_pcie_ep_write_header(struct pci_epc *epc, u8 fn,
         struct pci_epf_header *hdr)
{
 struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 struct cdns_pcie *pcie = &ep->pcie;

 cdns_pcie_ep_fn_writew(pcie, fn, PCI_DEVICE_ID, hdr->deviceid);
 cdns_pcie_ep_fn_writeb(pcie, fn, PCI_REVISION_ID, hdr->revid);
 cdns_pcie_ep_fn_writeb(pcie, fn, PCI_CLASS_PROG, hdr->progif_code);
 cdns_pcie_ep_fn_writew(pcie, fn, PCI_CLASS_DEVICE,
          hdr->subclass_code | hdr->baseclass_code << 8);
 cdns_pcie_ep_fn_writeb(pcie, fn, PCI_CACHE_LINE_SIZE,
          hdr->cache_line_size);
 cdns_pcie_ep_fn_writew(pcie, fn, PCI_SUBSYSTEM_ID, hdr->subsys_id);
 cdns_pcie_ep_fn_writeb(pcie, fn, PCI_INTERRUPT_PIN, hdr->interrupt_pin);





 if (fn == 0) {

  u32 id = CDNS_PCIE_LM_ID_VENDOR(hdr->vendorid) |
    CDNS_PCIE_LM_ID_SUBSYS(hdr->subsys_vendor_id);

  cdns_pcie_writel(pcie, CDNS_PCIE_LM_ID, id);
 }

 return 0;
}
