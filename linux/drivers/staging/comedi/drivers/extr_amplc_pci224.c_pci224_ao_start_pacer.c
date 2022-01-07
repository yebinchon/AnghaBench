
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci224_private {scalar_t__ iobase1; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; struct pci224_private* private; } ;


 int CLK_10MHZ ;
 int CLK_OUTNM1 ;
 int GAT_VCC ;
 scalar_t__ PCI224_ZCLK_SCE ;
 scalar_t__ PCI224_ZGAT_SCE ;
 int comedi_8254_pacer_enable (int ,int,int ,int) ;
 int outb (int ,scalar_t__) ;
 int pci224_clk_config (int,int ) ;
 int pci224_gat_config (int,int ) ;

__attribute__((used)) static void pci224_ao_start_pacer(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct pci224_private *devpriv = dev->private;






 outb(pci224_gat_config(0, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);


 outb(pci224_gat_config(2, GAT_VCC), devpriv->iobase1 + PCI224_ZGAT_SCE);

 outb(pci224_clk_config(2, CLK_10MHZ),
      devpriv->iobase1 + PCI224_ZCLK_SCE);

 outb(pci224_clk_config(0, CLK_OUTNM1),
      devpriv->iobase1 + PCI224_ZCLK_SCE);

 comedi_8254_pacer_enable(dev->pacer, 2, 0, 0);
}
