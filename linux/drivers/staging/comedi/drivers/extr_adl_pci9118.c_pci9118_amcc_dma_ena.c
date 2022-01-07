
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9118_private {scalar_t__ iobase_a; } ;
struct comedi_device {struct pci9118_private* private; } ;


 unsigned int A2P_HI_PRIORITY ;
 scalar_t__ AMCC_OP_REG_MCSR ;
 unsigned int EN_A2P_TRANSFERS ;
 unsigned int RESET_A2P_FLAGS ;
 unsigned int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;

__attribute__((used)) static void pci9118_amcc_dma_ena(struct comedi_device *dev, bool enable)
{
 struct pci9118_private *devpriv = dev->private;
 unsigned int mcsr;

 mcsr = inl(devpriv->iobase_a + AMCC_OP_REG_MCSR);
 if (enable)
  mcsr |= RESET_A2P_FLAGS | A2P_HI_PRIORITY | EN_A2P_TRANSFERS;
 else
  mcsr &= ~EN_A2P_TRANSFERS;
 outl(mcsr, devpriv->iobase_a + AMCC_OP_REG_MCSR);
}
