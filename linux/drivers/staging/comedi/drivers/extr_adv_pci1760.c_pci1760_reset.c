
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int PCI1760_CMD_ENA_CNT ;
 int PCI1760_CMD_ENA_CNT_MATCH ;
 int PCI1760_CMD_ENA_CNT_OFLOW ;
 int PCI1760_CMD_ENA_FILT ;
 int PCI1760_CMD_ENA_PAT_MATCH ;
 int PCI1760_CMD_RST_CNT ;
 int PCI1760_CMD_SET_CNT (int) ;
 int PCI1760_CMD_SET_CNT_EDGE ;
 int PCI1760_CMD_SET_CNT_MATCH (int) ;
 int PCI1760_CMD_SET_PAT_MATCH ;
 scalar_t__ PCI1760_INTCSR_REG (int) ;
 int outb (int ,scalar_t__) ;
 int pci1760_cmd (struct comedi_device*,int ,int) ;

__attribute__((used)) static void pci1760_reset(struct comedi_device *dev)
{
 int i;


 outb(0, dev->iobase + PCI1760_INTCSR_REG(0));
 outb(0, dev->iobase + PCI1760_INTCSR_REG(1));
 outb(0, dev->iobase + PCI1760_INTCSR_REG(3));


 pci1760_cmd(dev, PCI1760_CMD_ENA_CNT, 0);


 pci1760_cmd(dev, PCI1760_CMD_ENA_CNT_OFLOW, 0);


 pci1760_cmd(dev, PCI1760_CMD_ENA_CNT_MATCH, 0);


 for (i = 0; i < 8; i++) {
  pci1760_cmd(dev, PCI1760_CMD_SET_CNT_MATCH(i), 0x8000);
  pci1760_cmd(dev, PCI1760_CMD_SET_CNT(i), 0x0000);
 }


 pci1760_cmd(dev, PCI1760_CMD_RST_CNT, 0xff);


 pci1760_cmd(dev, PCI1760_CMD_SET_CNT_EDGE, 0);


 pci1760_cmd(dev, PCI1760_CMD_ENA_FILT, 0);


 pci1760_cmd(dev, PCI1760_CMD_ENA_PAT_MATCH, 0);


 pci1760_cmd(dev, PCI1760_CMD_SET_PAT_MATCH, 0);
}
