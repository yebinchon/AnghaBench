
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {unsigned int* eeprom_buffer; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {unsigned int n; int chanspec; } ;
struct comedi_device {struct ni_private* private; } ;


 size_t CR_CHAN (int ) ;

__attribute__((used)) static int ni_m_series_eeprom_insn_read(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 struct ni_private *devpriv = dev->private;
 unsigned int i;

 for (i = 0; i < insn->n; i++)
  data[i] = devpriv->eeprom_buffer[CR_CHAN(insn->chanspec)];

 return insn->n;
}
