
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ BADR3; } ;


 unsigned int I8254_OSC_BASE_10MHZ ;
 unsigned int I8254_OSC_BASE_1MHZ ;
 unsigned int PCIMDAS_STATUS_CLK ;
 scalar_t__ PCIMDAS_STATUS_REG ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static unsigned int cb_pcimdas_pacer_clk(struct comedi_device *dev)
{
 struct cb_pcimdas_private *devpriv = dev->private;
 unsigned int status;


 status = inb(devpriv->BADR3 + PCIMDAS_STATUS_REG);
 if (status & PCIMDAS_STATUS_CLK)
  return I8254_OSC_BASE_10MHZ;
 return I8254_OSC_BASE_1MHZ;
}
