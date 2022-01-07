
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pci_dev {int dummy; } ;
struct dpc_dev {int cap_pos; scalar_t__ rp_extensions; TYPE_1__* dev; } ;
struct aer_err_info {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {struct pci_dev* port; } ;


 int IRQ_HANDLED ;
 int PCIE_PORT_SERVICE_DPC ;
 int PCI_EXP_DPC_SOURCE_ID ;
 int PCI_EXP_DPC_STATUS ;
 int PCI_EXP_DPC_STATUS_TRIGGER_RSN ;
 int PCI_EXP_DPC_STATUS_TRIGGER_RSN_EXT ;
 scalar_t__ aer_get_device_error_info (struct pci_dev*,struct aer_err_info*) ;
 int aer_print_error (struct pci_dev*,struct aer_err_info*) ;
 scalar_t__ dpc_get_aer_uncorrect_severity (struct pci_dev*,struct aer_err_info*) ;
 int dpc_process_rp_pio_error (struct dpc_dev*) ;
 int pci_aer_clear_fatal_status (struct pci_dev*) ;
 int pci_channel_io_frozen ;
 int pci_cleanup_aer_uncorrect_error_status (struct pci_dev*) ;
 int pci_info (struct pci_dev*,char*,int,int) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_warn (struct pci_dev*,char*,char*) ;
 int pcie_do_recovery (struct pci_dev*,int ,int ) ;

__attribute__((used)) static irqreturn_t dpc_handler(int irq, void *context)
{
 struct aer_err_info info;
 struct dpc_dev *dpc = context;
 struct pci_dev *pdev = dpc->dev->port;
 u16 cap = dpc->cap_pos, status, source, reason, ext_reason;

 pci_read_config_word(pdev, cap + PCI_EXP_DPC_STATUS, &status);
 pci_read_config_word(pdev, cap + PCI_EXP_DPC_SOURCE_ID, &source);

 pci_info(pdev, "containment event, status:%#06x source:%#06x\n",
   status, source);

 reason = (status & PCI_EXP_DPC_STATUS_TRIGGER_RSN) >> 1;
 ext_reason = (status & PCI_EXP_DPC_STATUS_TRIGGER_RSN_EXT) >> 5;
 pci_warn(pdev, "%s detected\n",
   (reason == 0) ? "unmasked uncorrectable error" :
   (reason == 1) ? "ERR_NONFATAL" :
   (reason == 2) ? "ERR_FATAL" :
   (ext_reason == 0) ? "RP PIO error" :
   (ext_reason == 1) ? "software trigger" :
         "reserved error");


 if (dpc->rp_extensions && reason == 3 && ext_reason == 0)
  dpc_process_rp_pio_error(dpc);
 else if (reason == 0 &&
   dpc_get_aer_uncorrect_severity(pdev, &info) &&
   aer_get_device_error_info(pdev, &info)) {
  aer_print_error(pdev, &info);
  pci_cleanup_aer_uncorrect_error_status(pdev);
  pci_aer_clear_fatal_status(pdev);
 }


 pcie_do_recovery(pdev, pci_channel_io_frozen, PCIE_PORT_SERVICE_DPC);

 return IRQ_HANDLED;
}
