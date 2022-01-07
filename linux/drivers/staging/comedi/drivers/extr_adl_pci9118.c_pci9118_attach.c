
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;
struct comedi_device {int dummy; } ;
struct comedi_devconfig {int* options; } ;


 int EIO ;
 int comedi_set_hw_dev (struct comedi_device*,int *) ;
 int pci9118_common_attach (struct comedi_device*,int,int) ;
 struct pci_dev* pci9118_find_pci (struct comedi_device*,struct comedi_devconfig*) ;

__attribute__((used)) static int pci9118_attach(struct comedi_device *dev,
     struct comedi_devconfig *it)
{
 struct pci_dev *pcidev;
 int ext_mux, softsshdelay;

 ext_mux = it->options[2];
 softsshdelay = it->options[4];

 pcidev = pci9118_find_pci(dev, it);
 if (!pcidev)
  return -EIO;
 comedi_set_hw_dev(dev, &pcidev->dev);

 return pci9118_common_attach(dev, ext_mux, softsshdelay);
}
