
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pciserial_board {int flags; int num_ports; } ;
struct pci_dev {int class; } ;


 int ENODEV ;
 int FL_BASE_BARS ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 int PCI_CLASS_COMMUNICATION_MULTISERIAL ;
 int PCI_NUM_BAR_RESOURCES ;
 int pci_resource_flags (struct pci_dev*,int) ;
 int pci_resource_len (struct pci_dev*,int) ;
 int serial_pci_is_class_communication (struct pci_dev*) ;

__attribute__((used)) static int
serial_pci_guess_board(struct pci_dev *dev, struct pciserial_board *board)
{
 int num_iomem, num_port, first_port = -1, i;
 int rc;

 rc = serial_pci_is_class_communication(dev);
 if (rc)
  return rc;




 if ((dev->class >> 8) == PCI_CLASS_COMMUNICATION_MULTISERIAL)
  return -ENODEV;

 num_iomem = num_port = 0;
 for (i = 0; i < PCI_NUM_BAR_RESOURCES; i++) {
  if (pci_resource_flags(dev, i) & IORESOURCE_IO) {
   num_port++;
   if (first_port == -1)
    first_port = i;
  }
  if (pci_resource_flags(dev, i) & IORESOURCE_MEM)
   num_iomem++;
 }






 if (num_iomem <= 1 && num_port == 1) {
  board->flags = first_port;
  board->num_ports = pci_resource_len(dev, first_port) / 8;
  return 0;
 }






 first_port = -1;
 num_port = 0;
 for (i = 0; i < PCI_NUM_BAR_RESOURCES; i++) {
  if (pci_resource_flags(dev, i) & IORESOURCE_IO &&
      pci_resource_len(dev, i) == 8 &&
      (first_port == -1 || (first_port + num_port) == i)) {
   num_port++;
   if (first_port == -1)
    first_port = i;
  }
 }

 if (num_port > 1) {
  board->flags = first_port | FL_BASE_BARS;
  board->num_ports = num_port;
  return 0;
 }

 return -ENODEV;
}
