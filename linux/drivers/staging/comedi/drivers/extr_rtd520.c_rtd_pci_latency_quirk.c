
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_device {int class_dev; } ;


 int PCI_LATENCY_TIMER ;
 int dev_info (int ,char*,unsigned char,int) ;
 int pci_read_config_byte (struct pci_dev*,int ,unsigned char*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void rtd_pci_latency_quirk(struct comedi_device *dev,
      struct pci_dev *pcidev)
{
 unsigned char pci_latency;

 pci_read_config_byte(pcidev, PCI_LATENCY_TIMER, &pci_latency);
 if (pci_latency < 32) {
  dev_info(dev->class_dev,
    "PCI latency changed from %d to %d\n",
    pci_latency, 32);
  pci_write_config_byte(pcidev, PCI_LATENCY_TIMER, 32);
 }
}
