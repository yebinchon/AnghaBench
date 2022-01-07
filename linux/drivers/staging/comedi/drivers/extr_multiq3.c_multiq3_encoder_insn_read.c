
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {int maxdata; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; } ;


 unsigned int CR_CHAN (int ) ;
 int MULTIQ3_BP_RESET ;
 int MULTIQ3_CTRL_EN ;
 int MULTIQ3_CTRL_E_CHAN (unsigned int) ;
 scalar_t__ MULTIQ3_ENC_CTRL_REG ;
 scalar_t__ MULTIQ3_ENC_DATA_REG ;
 int MULTIQ3_TRSFRCNTR_OL ;
 int inb (scalar_t__) ;
 int multiq3_set_ctrl (struct comedi_device*,int) ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static int multiq3_encoder_insn_read(struct comedi_device *dev,
         struct comedi_subdevice *s,
         struct comedi_insn *insn,
         unsigned int *data)
{
 unsigned int chan = CR_CHAN(insn->chanspec);
 unsigned int val;
 int i;

 for (i = 0; i < insn->n; i++) {

  multiq3_set_ctrl(dev, MULTIQ3_CTRL_EN |
          MULTIQ3_CTRL_E_CHAN(chan));


  outb(MULTIQ3_BP_RESET, dev->iobase + MULTIQ3_ENC_CTRL_REG);


  outb(MULTIQ3_TRSFRCNTR_OL, dev->iobase + MULTIQ3_ENC_CTRL_REG);


  val = inb(dev->iobase + MULTIQ3_ENC_DATA_REG);
  val |= (inb(dev->iobase + MULTIQ3_ENC_DATA_REG) << 8);
  val |= (inb(dev->iobase + MULTIQ3_ENC_DATA_REG) << 16);
  data[i] = (val + ((s->maxdata + 1) >> 1)) & s->maxdata;
 }

 return insn->n;
}
