
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int dummy; } ;
struct comedi_device {int iobase; } ;


 unsigned int BIT (int) ;
 int EBUSY ;
 unsigned int inw_p (int ) ;

__attribute__((used)) static int dyna_pci10xx_ai_eoc(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned long context)
{
 unsigned int status;

 status = inw_p(dev->iobase);
 if (status & BIT(15))
  return 0;
 return -EBUSY;
}
