
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct apci3120_private* private; } ;
struct comedi_cmd {scalar_t__ start_src; scalar_t__ scan_begin_src; int flags; int convert_arg; int scan_begin_arg; int chanlist; int chanlist_len; } ;
struct apci3120_private {int mode; scalar_t__ use_dma; scalar_t__ cur_dmabuf; scalar_t__ amcc; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int AINT_WT_COMPLETE ;
 scalar_t__ AMCC_OP_REG_INTCSR ;
 int APCI3120_MODE_EOS_IRQ_ENA ;
 scalar_t__ APCI3120_MODE_REG ;
 int APCI3120_MODE_TIMER2_AS_TIMER ;
 int APCI3120_MODE_TIMER2_CLK_OSC ;
 int APCI3120_TIMER_MODE2 ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_TIMER ;
 int apci3120_exttrig_enable (struct comedi_device*,int) ;
 unsigned int apci3120_ns_to_timer (struct comedi_device*,int,int ,int ) ;
 int apci3120_set_chanlist (struct comedi_device*,struct comedi_subdevice*,int ,int ) ;
 int apci3120_setup_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int apci3120_timer_enable (struct comedi_device*,int,int) ;
 int apci3120_timer_set_mode (struct comedi_device*,int,int ) ;
 int apci3120_timer_write (struct comedi_device*,int,unsigned int) ;
 int outb (int,scalar_t__) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static int apci3120_ai_cmd(struct comedi_device *dev,
      struct comedi_subdevice *s)
{
 struct apci3120_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int divisor;


 devpriv->mode = APCI3120_MODE_TIMER2_CLK_OSC |
   APCI3120_MODE_TIMER2_AS_TIMER;


 outl(AINT_WT_COMPLETE, devpriv->amcc + AMCC_OP_REG_INTCSR);

 devpriv->cur_dmabuf = 0;


 apci3120_set_chanlist(dev, s, cmd->chanlist_len, cmd->chanlist);

 if (cmd->start_src == TRIG_EXT)
  apci3120_exttrig_enable(dev, 1);

 if (cmd->scan_begin_src == TRIG_TIMER) {




  divisor = apci3120_ns_to_timer(dev, 1, cmd->scan_begin_arg,
            cmd->flags);
  apci3120_timer_set_mode(dev, 1, APCI3120_TIMER_MODE2);
  apci3120_timer_write(dev, 1, divisor);
 }





 divisor = apci3120_ns_to_timer(dev, 0, cmd->convert_arg, cmd->flags);
 apci3120_timer_set_mode(dev, 0, APCI3120_TIMER_MODE2);
 apci3120_timer_write(dev, 0, divisor);

 if (devpriv->use_dma)
  apci3120_setup_dma(dev, s);
 else
  devpriv->mode |= APCI3120_MODE_EOS_IRQ_ENA;


 outb(devpriv->mode, dev->iobase + APCI3120_MODE_REG);

 if (cmd->scan_begin_src == TRIG_TIMER)
  apci3120_timer_enable(dev, 1, 1);
 apci3120_timer_enable(dev, 0, 1);

 return 0;
}
