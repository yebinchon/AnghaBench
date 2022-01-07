
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int dummy; } ;


 unsigned int CR_CHAN (int ) ;
 int EINVAL ;

 int multiq3_encoder_reset (struct comedi_device*,unsigned int) ;

__attribute__((used)) static int multiq3_encoder_insn_config(struct comedi_device *dev,
           struct comedi_subdevice *s,
           struct comedi_insn *insn,
           unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);

 switch (data[0]) {
 case 128:
  multiq3_encoder_reset(dev, chan);
  break;
 default:
  return -EINVAL;
 }

 return insn->n;
}
