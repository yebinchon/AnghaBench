
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int CR_CHAN (int ) ;
 scalar_t__ DB2K_REG_DAC_SETTING (unsigned int) ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int db2k_ao_eoc ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int db2k_ao_insn_write(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++) {
  unsigned int val = data[i];
  int ret;

  writew(val, dev->mmio + DB2K_REG_DAC_SETTING(chan));

  ret = comedi_timeout(dev, s, insn, db2k_ao_eoc, 0);
  if (ret)
   return ret;

  s->readback[chan] = val;
 }

 return insn->n;
}
