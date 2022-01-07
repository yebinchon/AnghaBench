
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {scalar_t__ iobase_a; struct pci9118_dmabuf* dmabuf; } ;
struct pci9118_dmabuf {int use_size; int hw; } ;
struct comedi_device {struct pci9118_private* private; } ;


 scalar_t__ AMCC_OP_REG_MWAR ;
 scalar_t__ AMCC_OP_REG_MWTC ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static void pci9118_amcc_setup_dma(struct comedi_device *dev, unsigned int buf)
{
 struct pci9118_private *devpriv = dev->private;
 struct pci9118_dmabuf *dmabuf = &devpriv->dmabuf[buf];


 outl(dmabuf->hw, devpriv->iobase_a + AMCC_OP_REG_MWAR);
 outl(dmabuf->use_size, devpriv->iobase_a + AMCC_OP_REG_MWTC);
}
