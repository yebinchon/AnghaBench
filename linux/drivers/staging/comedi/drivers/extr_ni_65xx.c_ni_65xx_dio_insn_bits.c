
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {unsigned int n_chan; unsigned int io_bits; scalar_t__ private; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ mmio; } ;


 unsigned int CR_CHAN (int ) ;
 int NI_65XX_CHAN_TO_PORT (unsigned int) ;
 scalar_t__ NI_65XX_IO_DATA_REG (unsigned int) ;
 int NI_65XX_PORT_TO_CHAN (int) ;
 unsigned int readb (scalar_t__) ;
 int writeb (unsigned int,scalar_t__) ;

__attribute__((used)) static int ni_65xx_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn,
     unsigned int *data)
{
 unsigned long base_port = (unsigned long)s->private;
 unsigned int base_chan = CR_CHAN(insn->chanspec);
 int last_port_offset = NI_65XX_CHAN_TO_PORT(s->n_chan - 1);
 unsigned int read_bits = 0;
 int port_offset;

 for (port_offset = NI_65XX_CHAN_TO_PORT(base_chan);
      port_offset <= last_port_offset; port_offset++) {
  unsigned int port = base_port + port_offset;
  int base_port_channel = NI_65XX_PORT_TO_CHAN(port_offset);
  unsigned int port_mask, port_data, bits;
  int bitshift = base_port_channel - base_chan;

  if (bitshift >= 32)
   break;
  port_mask = data[0];
  port_data = data[1];
  if (bitshift > 0) {
   port_mask >>= bitshift;
   port_data >>= bitshift;
  } else {
   port_mask <<= -bitshift;
   port_data <<= -bitshift;
  }
  port_mask &= 0xff;
  port_data &= 0xff;


  if (port_mask) {
   bits = readb(dev->mmio + NI_65XX_IO_DATA_REG(port));
   bits ^= s->io_bits;
   bits &= ~port_mask;
   bits |= (port_data & port_mask);
   bits ^= s->io_bits;
   writeb(bits, dev->mmio + NI_65XX_IO_DATA_REG(port));
  }


  bits = readb(dev->mmio + NI_65XX_IO_DATA_REG(port));
  bits ^= s->io_bits;
  if (bitshift > 0)
   bits <<= bitshift;
  else
   bits >>= -bitshift;

  read_bits |= bits;
 }
 data[1] = read_bits;
 return insn->n;
}
