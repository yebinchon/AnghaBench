
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ mmio; } ;


 scalar_t__ NI_65XX_CTRL_REG ;
 int comedi_pci_detach (struct comedi_device*) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void ni_65xx_detach(struct comedi_device *dev)
{
 if (dev->mmio)
  writeb(0x00, dev->mmio + NI_65XX_CTRL_REG);
 comedi_pci_detach(dev);
}
