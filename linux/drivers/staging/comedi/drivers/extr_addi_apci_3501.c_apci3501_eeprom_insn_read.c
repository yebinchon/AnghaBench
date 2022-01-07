
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {struct apci3501_private* private; } ;
struct apci3501_private {int amcc; } ;


 unsigned short CR_CHAN (int ) ;
 unsigned int apci3501_eeprom_readw (int ,int) ;

__attribute__((used)) static int apci3501_eeprom_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 struct apci3501_private *devpriv = dev->private;
 unsigned short addr = CR_CHAN(insn->chanspec);
 unsigned int val;
 unsigned int i;

 if (insn->n) {

  val = apci3501_eeprom_readw(devpriv->amcc, 2 * addr);
  for (i = 0; i < insn->n; i++)
   data[i] = val;
 }

 return insn->n;
}
