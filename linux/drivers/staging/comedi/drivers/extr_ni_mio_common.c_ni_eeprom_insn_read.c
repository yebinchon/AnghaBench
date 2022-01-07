
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 int CR_CHAN (int ) ;
 unsigned int ni_read_eeprom (struct comedi_device*,int ) ;

__attribute__((used)) static int ni_eeprom_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int val;
 unsigned int i;

 if (insn->n) {
  val = ni_read_eeprom(dev, CR_CHAN(insn->chanspec));
  for (i = 0; i < insn->n; i++)
   data[i] = val;
 }
 return insn->n;
}
