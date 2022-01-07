
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_3__ {int controller; } ;
struct usb_hcd {int has_tt; TYPE_2__* regs; TYPE_1__ self; } ;
struct pci_dev {int vendor; int device; int revision; int dev; } ;
struct ehci_hcd {int big_endian_mmio; int no_selective_suspend; int amd_pll_fix; int use_dummy_qh; int frame_index_bug; int hcs_params; int sbrn; int command; int has_ppcd; int need_io_watchdog; TYPE_2__* debug; TYPE_2__* caps; } ;
struct TYPE_4__ {int control; int hcs_params; } ;


 int CMD_PPCEE ;
 int DBGP_ENABLED ;
 int DMA_BIT_MASK (int) ;
 int EIO ;
 int HCS_DEBUG_PORT (int) ;
 int HCS_N_CC (int) ;
 int HCS_N_PCC (int) ;
 int HCS_N_PORTS (int) ;
 int PCI_CAP_ID_DBG ;
 int PCI_DEVICE_ID_INTEL_CE4100_USB ;
 scalar_t__ PCI_DEVICE_ID_STMICRO_USB_HOST ;
 int PCI_DEVICE_ID_TDI_EHCI ;






 int PCI_VENDOR_ID_STMICRO ;



 int dev_warn (int *,char*) ;
 scalar_t__ device_can_wakeup (int *) ;
 int device_set_wakeup_capable (int *,int) ;
 int ehci_dbg (struct ehci_hcd*,char*,int,int,int) ;
 int ehci_info (struct ehci_hcd*,char*,...) ;
 int ehci_pci_reinit (struct ehci_hcd*,struct pci_dev*) ;
 int ehci_readl (struct ehci_hcd*,int *) ;
 int ehci_setup (struct usb_hcd*) ;
 int ehci_warn (struct ehci_hcd*,char*) ;
 struct ehci_hcd* hcd_to_ehci (struct usb_hcd*) ;
 int pci_find_capability (struct pci_dev*,int ) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_set_consistent_dma_mask (struct pci_dev*,int ) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;
 int usb_amd_hang_symptom_quirk () ;
 int usb_amd_quirk_pll_check () ;

__attribute__((used)) static int ehci_pci_setup(struct usb_hcd *hcd)
{
 struct ehci_hcd *ehci = hcd_to_ehci(hcd);
 struct pci_dev *pdev = to_pci_dev(hcd->self.controller);
 u32 temp;
 int retval;

 ehci->caps = hcd->regs;
 switch (pdev->vendor) {
 case 129:

  if (pdev->device == 0x01b5) {



   ehci_warn(ehci,
      "unsupported big endian Toshiba quirk\n");

  }
  break;
 case 131:




  switch (pdev->device) {
  case 0x003c:
  case 0x005b:
  case 0x00d8:
  case 0x00e8:
   if (pci_set_consistent_dma_mask(pdev,
      DMA_BIT_MASK(31)) < 0)
    ehci_warn(ehci, "can't enable NVidia "
     "workaround for >2GB RAM\n");
   break;




  case 0x0068:
   if (pdev->revision < 0xa4)
    ehci->no_selective_suspend = 1;
   break;
  }
  break;
 case 134:
  if (pdev->device == PCI_DEVICE_ID_INTEL_CE4100_USB)
   hcd->has_tt = 1;
  break;
 case 130:
  if (pdev->device == PCI_DEVICE_ID_TDI_EHCI)
   hcd->has_tt = 1;
  break;
 case 136:

  if (usb_amd_quirk_pll_check())
   ehci->amd_pll_fix = 1;

  if (pdev->device == 0x7463) {
   ehci_info(ehci, "ignoring AMD8111 (errata)\n");
   retval = -EIO;
   goto done;
  }
  if (pdev->device == 0x7808) {
   ehci->use_dummy_qh = 1;
   ehci_info(ehci, "applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\n");
  }
  break;
 case 128:
  if (pdev->device == 0x3104 && (pdev->revision & 0xf0) == 0x60) {
   u8 tmp;





   pci_read_config_byte(pdev, 0x4b, &tmp);
   if (tmp & 0x20)
    break;
   pci_write_config_byte(pdev, 0x4b, tmp | 0x20);
  }
  break;
 case 135:

  if (usb_amd_quirk_pll_check())
   ehci->amd_pll_fix = 1;
  if (pdev->device == 0x4396) {
   ehci->use_dummy_qh = 1;
   ehci_info(ehci, "applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\n");
  }



  if ((pdev->device == 0x4386 || pdev->device == 0x4396) &&
    usb_amd_hang_symptom_quirk()) {
   u8 tmp;
   ehci_info(ehci, "applying AMD SB600/SB700 USB freeze workaround\n");
   pci_read_config_byte(pdev, 0x53, &tmp);
   pci_write_config_byte(pdev, 0x53, tmp | (1<<3));
  }
  break;
 case 132:

  ehci_info(ehci, "applying MosChip frame-index workaround\n");
  ehci->frame_index_bug = 1;
  break;
 }


 temp = pci_find_capability(pdev, PCI_CAP_ID_DBG);
 if (temp) {
  pci_read_config_dword(pdev, temp, &temp);
  temp >>= 16;
  if (((temp >> 13) & 7) == 1) {
   u32 hcs_params = ehci_readl(ehci,
          &ehci->caps->hcs_params);

   temp &= 0x1fff;
   ehci->debug = hcd->regs + temp;
   temp = ehci_readl(ehci, &ehci->debug->control);
   ehci_info(ehci, "debug port %d%s\n",
      HCS_DEBUG_PORT(hcs_params),
      (temp & DBGP_ENABLED) ? " IN USE" : "");
   if (!(temp & DBGP_ENABLED))
    ehci->debug = ((void*)0);
  }
 }

 retval = ehci_setup(hcd);
 if (retval)
  return retval;


 switch (pdev->vendor) {
 case 133:
 case 134:
 case 136:
  ehci->need_io_watchdog = 0;
  break;
 case 131:
  switch (pdev->device) {





  case 0x0d9d:
   ehci_info(ehci, "disable ppcd for nvidia mcp89\n");
   ehci->has_ppcd = 0;
   ehci->command &= ~CMD_PPCEE;
   break;
  }
  break;
 }


 temp = HCS_N_CC(ehci->hcs_params) * HCS_N_PCC(ehci->hcs_params);
 temp &= 0x0f;
 if (temp && HCS_N_PORTS(ehci->hcs_params) > temp) {
  ehci_dbg(ehci, "bogus port configuration: "
   "cc=%d x pcc=%d < ports=%d\n",
   HCS_N_CC(ehci->hcs_params),
   HCS_N_PCC(ehci->hcs_params),
   HCS_N_PORTS(ehci->hcs_params));

  switch (pdev->vendor) {
  case 0x17a0:

   temp |= (ehci->hcs_params & ~0xf);
   ehci->hcs_params = temp;
   break;
  case 131:

   break;
  }
 }


 if (pdev->vendor == PCI_VENDOR_ID_STMICRO
     && pdev->device == PCI_DEVICE_ID_STMICRO_USB_HOST)
  ;
 else
  pci_read_config_byte(pdev, 0x60, &ehci->sbrn);






 if (!device_can_wakeup(&pdev->dev)) {
  u16 port_wake;

  pci_read_config_word(pdev, 0x62, &port_wake);
  if (port_wake & 0x0001) {
   dev_warn(&pdev->dev, "Enabling legacy PCI PM\n");
   device_set_wakeup_capable(&pdev->dev, 1);
  }
 }






 retval = ehci_pci_reinit(ehci, pdev);
done:
 return retval;
}
