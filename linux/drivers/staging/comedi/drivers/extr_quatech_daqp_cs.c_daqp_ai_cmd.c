
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct daqp_private {int pacer_div; scalar_t__ stop; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct daqp_private* private; } ;
struct comedi_cmd {scalar_t__ convert_src; int chanlist_len; scalar_t__ stop_src; unsigned long long scan_end_arg; scalar_t__ stop_arg; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 scalar_t__ DAQP_AI_FIFO_REG ;
 scalar_t__ DAQP_AUX_REG ;
 int DAQP_CMD_ARM ;
 int DAQP_CMD_FIFO_DATA ;
 scalar_t__ DAQP_CMD_REG ;
 int DAQP_CMD_RSTF ;
 int DAQP_CMD_RSTQ ;
 int DAQP_CTRL_FIFO_INT_ENA ;
 int DAQP_CTRL_PACER_CLK_5MHZ ;
 scalar_t__ DAQP_CTRL_REG ;
 int DAQP_CTRL_TRIG_MODE ;
 int DAQP_FIFO_SIZE ;
 int EIO ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_TIMER ;
 unsigned long long comedi_bytes_per_sample (struct comedi_subdevice*) ;
 int daqp_ai_set_one_scanlist_entry (struct comedi_device*,int ,int) ;
 int daqp_clear_events (struct comedi_device*,int) ;
 int daqp_set_pacer (struct comedi_device*,int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int daqp_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct daqp_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int scanlist_start_on_every_entry;
 int threshold;
 int ret;
 int i;

 if (devpriv->stop)
  return -EIO;

 outb(0, dev->iobase + DAQP_AUX_REG);


 outb(DAQP_CMD_RSTQ, dev->iobase + DAQP_CMD_REG);
 daqp_set_pacer(dev, devpriv->pacer_div);

 if (cmd->convert_src == TRIG_TIMER)
  scanlist_start_on_every_entry = 1;
 else
  scanlist_start_on_every_entry = 0;


 for (i = 0; i < cmd->chanlist_len; i++) {
  int start = (i == 0 || scanlist_start_on_every_entry);

  daqp_ai_set_one_scanlist_entry(dev, cmd->chanlist[i], start);
 }
 if (cmd->stop_src == TRIG_COUNT) {
  unsigned long long nsamples;
  unsigned long long nbytes;

  nsamples = (unsigned long long)cmd->stop_arg *
      cmd->scan_end_arg;
  nbytes = nsamples * comedi_bytes_per_sample(s);
  while (nbytes > DAQP_FIFO_SIZE * 3 / 4)
   nbytes /= 2;
  threshold = nbytes;
 } else {
  threshold = DAQP_FIFO_SIZE / 2;
 }



 outb(DAQP_CMD_RSTF, dev->iobase + DAQP_CMD_REG);
 outb(0x00, dev->iobase + DAQP_AI_FIFO_REG);
 outb(0x00, dev->iobase + DAQP_AI_FIFO_REG);

 outb((DAQP_FIFO_SIZE - threshold) & 0xff,
      dev->iobase + DAQP_AI_FIFO_REG);
 outb((DAQP_FIFO_SIZE - threshold) >> 8, dev->iobase + DAQP_AI_FIFO_REG);


 outb(DAQP_CTRL_TRIG_MODE | DAQP_CTRL_PACER_CLK_5MHZ |
      DAQP_CTRL_FIFO_INT_ENA, dev->iobase + DAQP_CTRL_REG);

 ret = daqp_clear_events(dev, 100);
 if (ret)
  return ret;


 outb(DAQP_CMD_ARM | DAQP_CMD_FIFO_DATA, dev->iobase + DAQP_CMD_REG);

 return 0;
}
