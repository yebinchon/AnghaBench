
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int c6xdigio_encoder_read (struct comedi_device*,unsigned int) ;
 unsigned int comedi_offset_munge (struct comedi_subdevice*,unsigned int) ;

__attribute__((used)) static int c6xdigio_encoder_insn_read(struct comedi_device *dev,
          struct comedi_subdevice *s,
          struct comedi_insn *insn,
          unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;
 int i;

 for (i = 0; i < insn->n; i++) {
  val = c6xdigio_encoder_read(dev, chan);


  data[i] = comedi_offset_munge(s, val);
 }

 return insn->n;
}
