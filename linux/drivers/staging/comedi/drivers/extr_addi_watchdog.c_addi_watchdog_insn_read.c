
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct addi_watchdog_private* private; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct addi_watchdog_private {scalar_t__ iobase; } ;


 scalar_t__ ADDI_TCW_STATUS_REG ;
 unsigned int inl (scalar_t__) ;

__attribute__((used)) static int addi_watchdog_insn_read(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 struct addi_watchdog_private *spriv = s->private;
 int i;

 for (i = 0; i < insn->n; i++)
  data[i] = inl(spriv->iobase + ADDI_TCW_STATUS_REG);

 return insn->n;
}
