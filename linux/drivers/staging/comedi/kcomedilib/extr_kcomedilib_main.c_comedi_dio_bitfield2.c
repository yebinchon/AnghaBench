
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_insn {unsigned int chanspec; int n; unsigned int subdev; int insn; } ;
struct comedi_device {int dummy; } ;
typedef int insn ;


 unsigned int CR_CHAN (unsigned int) ;
 int EINVAL ;
 int INSN_BITS ;
 int comedi_do_insn (struct comedi_device*,struct comedi_insn*,unsigned int*) ;
 unsigned int comedi_get_n_channels (struct comedi_device*,unsigned int) ;
 int memset (struct comedi_insn*,int ,int) ;

int comedi_dio_bitfield2(struct comedi_device *dev, unsigned int subdev,
    unsigned int mask, unsigned int *bits,
    unsigned int base_channel)
{
 struct comedi_insn insn;
 unsigned int data[2];
 unsigned int n_chan;
 unsigned int shift;
 int ret;

 base_channel = CR_CHAN(base_channel);
 n_chan = comedi_get_n_channels(dev, subdev);
 if (base_channel >= n_chan)
  return -EINVAL;

 memset(&insn, 0, sizeof(insn));
 insn.insn = INSN_BITS;
 insn.chanspec = base_channel;
 insn.n = 2;
 insn.subdev = subdev;

 data[0] = mask;
 data[1] = *bits;





 if (n_chan <= 32) {
  shift = base_channel;
  if (shift) {
   insn.chanspec = 0;
   data[0] <<= shift;
   data[1] <<= shift;
  }
 } else {
  shift = 0;
 }

 ret = comedi_do_insn(dev, &insn, data);
 *bits = data[1] >> shift;
 return ret;
}
