
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {scalar_t__ device; } ;


 scalar_t__ PCI_DEVICE_ID_ASP_1200A ;
 scalar_t__ PCI_DEVICE_ID_ASP_ABP940 ;
 int PCI_LATENCY_TIMER ;
 int pci_read_config_byte (struct pci_dev*,int ,int*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;

__attribute__((used)) static void advansys_set_latency(struct pci_dev *pdev)
{
 if ((pdev->device == PCI_DEVICE_ID_ASP_1200A) ||
     (pdev->device == PCI_DEVICE_ID_ASP_ABP940)) {
  pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0);
 } else {
  u8 latency;
  pci_read_config_byte(pdev, PCI_LATENCY_TIMER, &latency);
  if (latency < 0x20)
   pci_write_config_byte(pdev, PCI_LATENCY_TIMER, 0x20);
 }
}
