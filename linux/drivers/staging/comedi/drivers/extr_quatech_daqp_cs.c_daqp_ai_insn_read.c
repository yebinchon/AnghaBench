
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daqp_private {scalar_t__ stop; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int chanspec; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;


 scalar_t__ DAQP_AUX_REG ;
 int DAQP_CMD_ARM ;
 int DAQP_CMD_FIFO_DATA ;
 scalar_t__ DAQP_CMD_REG ;
 int DAQP_CMD_RSTF ;
 int DAQP_CMD_RSTQ ;
 int DAQP_CMD_STOP ;
 int DAQP_CTRL_PACER_CLK_100KHZ ;
 scalar_t__ DAQP_CTRL_REG ;
 scalar_t__ DAQP_STATUS_REG ;
 int EIO ;
 int comedi_timeout (struct comedi_device*,struct comedi_subdevice*,struct comedi_insn*,int ,int ) ;
 int daqp_ai_eos ;
 unsigned int daqp_ai_get_sample (struct comedi_device*,struct comedi_subdevice*) ;
 int daqp_ai_set_one_scanlist_entry (struct comedi_device*,int ,int) ;
 int daqp_clear_events (struct comedi_device*,int) ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int daqp_ai_insn_read(struct comedi_device *dev,
        struct comedi_subdevice *s,
        struct comedi_insn *insn,
        unsigned int *data)
{
 struct daqp_private *devpriv = dev->private;
 int ret = 0;
 int i;

 if (devpriv->stop)
  return -EIO;

 outb(0, dev->iobase + DAQP_AUX_REG);


 outb(DAQP_CMD_RSTQ, dev->iobase + DAQP_CMD_REG);


 daqp_ai_set_one_scanlist_entry(dev, insn->chanspec, 1);


 outb(DAQP_CMD_RSTF, dev->iobase + DAQP_CMD_REG);


 outb(DAQP_CTRL_PACER_CLK_100KHZ, dev->iobase + DAQP_CTRL_REG);

 ret = daqp_clear_events(dev, 10000);
 if (ret)
  return ret;

 for (i = 0; i < insn->n; i++) {

  outb(DAQP_CMD_ARM | DAQP_CMD_FIFO_DATA,
       dev->iobase + DAQP_CMD_REG);

  ret = comedi_timeout(dev, s, insn, daqp_ai_eos, 0);
  if (ret)
   break;


  inb(dev->iobase + DAQP_STATUS_REG);

  data[i] = daqp_ai_get_sample(dev, s);
 }


 outb(DAQP_CMD_STOP, dev->iobase + DAQP_CMD_REG);
 inb(dev->iobase + DAQP_STATUS_REG);

 return ret ? ret : insn->n;
}
