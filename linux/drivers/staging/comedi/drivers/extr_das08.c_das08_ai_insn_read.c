
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das08_private_struct {int * pg_gainlist; int do_mux_bits; } ;
struct das08_board_struct {int ai_nbits; scalar_t__ ai_encoding; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {int class_dev; scalar_t__ iobase; int spinlock; struct das08_private_struct* private; struct das08_board_struct* board_ptr; } ;


 unsigned int BIT (int) ;
 int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 scalar_t__ DAS08_AI_LSB_REG ;
 scalar_t__ DAS08_AI_MSB_REG ;
 scalar_t__ DAS08_AI_TRIG_REG ;
 int DAS08_CONTROL_MUX (int) ;
 int DAS08_CONTROL_MUX_MASK ;
 scalar_t__ DAS08_CONTROL_REG ;
 scalar_t__ DAS08_GAIN_REG ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int das08_ai_eoc ;
 scalar_t__ das08_encode12 ;
 scalar_t__ das08_encode16 ;
 scalar_t__ das08_pcm_encode12 ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*) ;
 int inb (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outb_p (int ,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int das08_ai_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn, unsigned int *data)
{
 const struct das08_board_struct *board = dev->board_ptr;
 struct das08_private_struct *devpriv = dev->private;
 int n;
 int chan;
 int range;
 int lsb, msb;
 int ret;

 chan = CR_CHAN(insn->chanspec);
 range = CR_RANGE(insn->chanspec);


 inb(dev->iobase + DAS08_AI_LSB_REG);
 inb(dev->iobase + DAS08_AI_MSB_REG);



 spin_lock(&dev->spinlock);
 devpriv->do_mux_bits &= ~DAS08_CONTROL_MUX_MASK;
 devpriv->do_mux_bits |= DAS08_CONTROL_MUX(chan);
 outb(devpriv->do_mux_bits, dev->iobase + DAS08_CONTROL_REG);
 spin_unlock(&dev->spinlock);

 if (devpriv->pg_gainlist) {

  range = CR_RANGE(insn->chanspec);
  outb(devpriv->pg_gainlist[range],
       dev->iobase + DAS08_GAIN_REG);
 }

 for (n = 0; n < insn->n; n++) {

  if (board->ai_nbits == 16)
   if (inb(dev->iobase + DAS08_AI_MSB_REG) & 0x80)
    dev_info(dev->class_dev, "over-range\n");


  outb_p(0, dev->iobase + DAS08_AI_TRIG_REG);

  ret = comedi_timeout(dev, s, insn, das08_ai_eoc, 0);
  if (ret)
   return ret;

  msb = inb(dev->iobase + DAS08_AI_MSB_REG);
  lsb = inb(dev->iobase + DAS08_AI_LSB_REG);
  if (board->ai_encoding == das08_encode12) {
   data[n] = (lsb >> 4) | (msb << 4);
  } else if (board->ai_encoding == das08_pcm_encode12) {
   data[n] = (msb << 8) + lsb;
  } else if (board->ai_encoding == das08_encode16) {
   unsigned int magnitude = lsb | ((msb & 0x7f) << 8);





   if (msb & 0x80)
    data[n] = BIT(15) + magnitude;
   else
    data[n] = BIT(15) - magnitude;
  } else {
   dev_err(dev->class_dev, "bug! unknown ai encoding\n");
   return -1;
  }
 }

 return n;
}
