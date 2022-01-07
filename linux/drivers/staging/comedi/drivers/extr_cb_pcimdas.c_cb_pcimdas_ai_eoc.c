
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {struct cb_pcimdas_private* private; } ;
struct cb_pcimdas_private {scalar_t__ BADR3; } ;


 int EBUSY ;
 unsigned int PCIMDAS_STATUS_EOC ;
 scalar_t__ PCIMDAS_STATUS_REG ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int cb_pcimdas_ai_eoc(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned long context)
{
 struct cb_pcimdas_private *devpriv = dev->private;
 unsigned int status;

 status = inb(devpriv->BADR3 + PCIMDAS_STATUS_REG);
 if ((status & PCIMDAS_STATUS_EOC) == 0)
  return 0;
 return -EBUSY;
}
