
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct das6402_private {int irq; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct das6402_private* private; } ;
struct comedi_cmd {int chanlist_len; int * chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 unsigned int CR_CHAN (int ) ;
 int DAS6402_AI_MUX_HI (unsigned int) ;
 int DAS6402_AI_MUX_LO (unsigned int) ;
 scalar_t__ DAS6402_AI_MUX_REG ;
 int DAS6402_CTRL_INTE ;
 int DAS6402_CTRL_IRQ (int ) ;
 int DAS6402_CTRL_PACER_TRIG ;
 scalar_t__ DAS6402_CTRL_REG ;
 int DAS6402_MODE_FIFONEPTY ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_update_divisors (int ) ;
 int das6402_ai_set_mode (struct comedi_device*,struct comedi_subdevice*,int ,int ) ;
 int outb (int,scalar_t__) ;
 int outw (int,scalar_t__) ;

__attribute__((used)) static int das6402_ai_cmd(struct comedi_device *dev,
     struct comedi_subdevice *s)
{
 struct das6402_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int chan_lo = CR_CHAN(cmd->chanlist[0]);
 unsigned int chan_hi = CR_CHAN(cmd->chanlist[cmd->chanlist_len - 1]);

 das6402_ai_set_mode(dev, s, cmd->chanlist[0], DAS6402_MODE_FIFONEPTY);


 outw(DAS6402_AI_MUX_HI(chan_hi) | DAS6402_AI_MUX_LO(chan_lo),
      dev->iobase + DAS6402_AI_MUX_REG);

 comedi_8254_update_divisors(dev->pacer);
 comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);


 outb(DAS6402_CTRL_INTE |
      DAS6402_CTRL_IRQ(devpriv->irq) |
      DAS6402_CTRL_PACER_TRIG, dev->iobase + DAS6402_CTRL_REG);

 return 0;
}
