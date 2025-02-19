
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int s526_gpct_read (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int s526_gpct_rinsn(struct comedi_device *dev,
      struct comedi_subdevice *s,
      struct comedi_insn *insn,
      unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 int i;

 for (i = 0; i < insn->n; i++)
  data[i] = s526_gpct_read(dev, chan);

 return insn->n;
}
