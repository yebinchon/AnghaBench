
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct comedi_device {int ioenabled; int board_name; } ;


 int ENODEV ;
 struct pci_dev* comedi_to_pci_dev (struct comedi_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_request_regions (struct pci_dev*,int ) ;

int comedi_pci_enable(struct comedi_device *dev)
{
 struct pci_dev *pcidev = comedi_to_pci_dev(dev);
 int rc;

 if (!pcidev)
  return -ENODEV;

 rc = pci_enable_device(pcidev);
 if (rc < 0)
  return rc;

 rc = pci_request_regions(pcidev, dev->board_name);
 if (rc < 0)
  pci_disable_device(pcidev);
 else
  dev->ioenabled = 1;

 return rc;
}
