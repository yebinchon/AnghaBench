
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int labpc_eeprom_ready ;
 int labpc_eeprom_write (struct comedi_device*,unsigned int,unsigned int) ;

__attribute__((used)) static int labpc_eeprom_insn_write(struct comedi_device *dev,
       struct comedi_subdevice *s,
       struct comedi_insn *insn,
       unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int ret;


 if (chan < 16 || chan > 127)
  return -EINVAL;





 if (insn->n > 0) {
  unsigned int val = data[insn->n - 1];

  ret = comedi_timeout(dev, s, insn, labpc_eeprom_ready, 0);
  if (ret)
   return ret;

  labpc_eeprom_write(dev, chan, val);
  s->readback[chan] = val;
 }

 return insn->n;
}
