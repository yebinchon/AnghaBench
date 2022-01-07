
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {int ai_cfg; struct pci9118_dmabuf* dmabuf; } ;
struct pci9118_dmabuf {int hw; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct pci9118_private* private; } ;


 int I8254_BINARY ;
 int I8254_MODE0 ;
 int PCI9118_AI_CFG_AM ;
 int PCI9118_AI_CFG_PDTRG ;
 int PCI9118_AI_CFG_PETRG ;
 scalar_t__ PCI9118_AI_CFG_REG ;
 int PCI9118_AI_CFG_START ;
 int comedi_8254_load (int ,int ,int,int) ;
 int outl (int,scalar_t__) ;

__attribute__((used)) static void pci9118_ai_mode4_switch(struct comedi_device *dev,
        unsigned int next_buf)
{
 struct pci9118_private *devpriv = dev->private;
 struct pci9118_dmabuf *dmabuf = &devpriv->dmabuf[next_buf];

 devpriv->ai_cfg = PCI9118_AI_CFG_PDTRG | PCI9118_AI_CFG_PETRG |
     PCI9118_AI_CFG_AM;
 outl(devpriv->ai_cfg, dev->iobase + PCI9118_AI_CFG_REG);
 comedi_8254_load(dev->pacer, 0, dmabuf->hw >> 1,
    I8254_MODE0 | I8254_BINARY);
 devpriv->ai_cfg |= PCI9118_AI_CFG_START;
 outl(devpriv->ai_cfg, dev->iobase + PCI9118_AI_CFG_REG);
}
