
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int index; int n_chan; unsigned int state; unsigned int io_bits; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;


 unsigned int comedi_dio_update_state (struct comedi_subdevice*,unsigned int*) ;
 unsigned int pcmmio_dio_read (struct comedi_device*,int ,int) ;
 int pcmmio_dio_write (struct comedi_device*,unsigned int,int ,int) ;

__attribute__((used)) static int pcmmio_dio_insn_bits(struct comedi_device *dev,
    struct comedi_subdevice *s,
    struct comedi_insn *insn,
    unsigned int *data)
{

 int port = s->index == 2 ? 0 : 3;
 unsigned int chanmask = (1 << s->n_chan) - 1;
 unsigned int mask;
 unsigned int val;

 mask = comedi_dio_update_state(s, data);
 if (mask) {
  val = ~s->state & chanmask;
  val &= s->io_bits;
  pcmmio_dio_write(dev, val, 0, port);
 }


 val = pcmmio_dio_read(dev, 0, port);


 data[1] = ~val & chanmask;

 return insn->n;
}
