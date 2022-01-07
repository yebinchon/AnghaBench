
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int apci3120_dma_free (struct comedi_device*) ;
 int comedi_pci_detach (struct comedi_device*) ;

__attribute__((used)) static void apci3120_detach(struct comedi_device *dev)
{
 comedi_pci_detach(dev);
 apci3120_dma_free(dev);
}
