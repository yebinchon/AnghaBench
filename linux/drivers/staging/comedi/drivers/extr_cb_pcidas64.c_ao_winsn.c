
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcidas64_private {unsigned int dac_control1_bits; scalar_t__ main_iobase; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_subdevice {unsigned int* readback; } ;
struct comedi_insn {unsigned int n; int chanspec; } ;
struct comedi_device {struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 scalar_t__ DAC_CONTROL0_REG ;
 scalar_t__ DAC_CONTROL1_REG ;
 scalar_t__ LAYOUT_4020 ;
 scalar_t__ dac_convert_reg (unsigned int) ;
 scalar_t__ dac_lsb_4020_reg (unsigned int) ;
 scalar_t__ dac_msb_4020_reg (unsigned int) ;
 int set_dac_range_bits (struct comedi_device*,unsigned int*,unsigned int,unsigned int) ;
 int writew (unsigned int,scalar_t__) ;

__attribute__((used)) static int ao_winsn(struct comedi_device *dev, struct comedi_subdevice *s,
      struct comedi_insn *insn, unsigned int *data)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int range = CR_RANGE(insn->chanspec);
 unsigned int val = s->readback[chan];
 unsigned int i;


 writew(0, devpriv->main_iobase + DAC_CONTROL0_REG);


 set_dac_range_bits(dev, &devpriv->dac_control1_bits, chan, range);
 writew(devpriv->dac_control1_bits,
        devpriv->main_iobase + DAC_CONTROL1_REG);

 for (i = 0; i < insn->n; i++) {

  val = data[i];
  if (board->layout == LAYOUT_4020) {
   writew(val & 0xff,
          devpriv->main_iobase + dac_lsb_4020_reg(chan));
   writew((val >> 8) & 0xf,
          devpriv->main_iobase + dac_msb_4020_reg(chan));
  } else {
   writew(val,
          devpriv->main_iobase + dac_convert_reg(chan));
  }
 }


 s->readback[chan] = val;

 return insn->n;
}
