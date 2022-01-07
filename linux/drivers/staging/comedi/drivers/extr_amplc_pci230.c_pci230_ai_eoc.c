
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {scalar_t__ daqio; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct pci230_private* private; } ;


 int EBUSY ;
 scalar_t__ PCI230_ADCCON ;
 unsigned int PCI230_ADC_FIFO_EMPTY ;
 unsigned int inw (scalar_t__) ;

__attribute__((used)) static int pci230_ai_eoc(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned long context)
{
 struct pci230_private *devpriv = dev->private;
 unsigned int status;

 status = inw(devpriv->daqio + PCI230_ADCCON);
 if ((status & PCI230_ADC_FIFO_EMPTY) == 0)
  return 0;
 return -EBUSY;
}
