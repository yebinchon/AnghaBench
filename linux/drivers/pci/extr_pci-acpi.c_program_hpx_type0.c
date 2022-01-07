
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pci_dev {int class; } ;
struct hpx_type0 {int revision; scalar_t__ enable_perr; int latency_timer; scalar_t__ enable_serr; int cache_line_size; } ;


 int PCI_BRIDGE_CONTROL ;
 int PCI_BRIDGE_CTL_PARITY ;
 int PCI_CACHE_LINE_SIZE ;
 int PCI_CLASS_BRIDGE_PCI ;
 int PCI_COMMAND ;
 int PCI_COMMAND_PARITY ;
 int PCI_COMMAND_SERR ;
 int PCI_LATENCY_TIMER ;
 int PCI_SEC_LATENCY_TIMER ;
 struct hpx_type0 pci_default_type0 ;
 int pci_read_config_word (struct pci_dev*,int ,int *) ;
 int pci_warn (struct pci_dev*,char*,int) ;
 int pci_write_config_byte (struct pci_dev*,int ,int ) ;
 int pci_write_config_word (struct pci_dev*,int ,int ) ;

__attribute__((used)) static void program_hpx_type0(struct pci_dev *dev, struct hpx_type0 *hpx)
{
 u16 pci_cmd, pci_bctl;

 if (!hpx)
  hpx = &pci_default_type0;

 if (hpx->revision > 1) {
  pci_warn(dev, "PCI settings rev %d not supported; using defaults\n",
    hpx->revision);
  hpx = &pci_default_type0;
 }

 pci_write_config_byte(dev, PCI_CACHE_LINE_SIZE, hpx->cache_line_size);
 pci_write_config_byte(dev, PCI_LATENCY_TIMER, hpx->latency_timer);
 pci_read_config_word(dev, PCI_COMMAND, &pci_cmd);
 if (hpx->enable_serr)
  pci_cmd |= PCI_COMMAND_SERR;
 if (hpx->enable_perr)
  pci_cmd |= PCI_COMMAND_PARITY;
 pci_write_config_word(dev, PCI_COMMAND, pci_cmd);


 if ((dev->class >> 8) == PCI_CLASS_BRIDGE_PCI) {
  pci_write_config_byte(dev, PCI_SEC_LATENCY_TIMER,
          hpx->latency_timer);
  pci_read_config_word(dev, PCI_BRIDGE_CONTROL, &pci_bctl);
  if (hpx->enable_perr)
   pci_bctl |= PCI_BRIDGE_CTL_PARITY;
  pci_write_config_word(dev, PCI_BRIDGE_CONTROL, pci_bctl);
 }
}
