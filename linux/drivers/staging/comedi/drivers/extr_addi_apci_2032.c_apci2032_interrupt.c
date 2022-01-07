
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {TYPE_1__* async; struct apci2032_int_private* private; } ;
struct comedi_device {scalar_t__ iobase; int attached; struct comedi_subdevice* read_subdev; } ;
struct comedi_cmd {int chanlist_len; scalar_t__ stop_src; scalar_t__ stop_arg; int * chanlist; } ;
struct apci2032_int_private {unsigned int enabled_isns; int spinlock; scalar_t__ active; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 scalar_t__ APCI2032_INT_CTRL_REG ;
 scalar_t__ APCI2032_INT_STATUS_REG ;
 int APCI2032_STATUS_IRQ ;
 scalar_t__ APCI2032_STATUS_REG ;
 int COMEDI_CB_EOA ;
 unsigned int CR_CHAN (int ) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static irqreturn_t apci2032_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_cmd *cmd = &s->async->cmd;
 struct apci2032_int_private *subpriv;
 unsigned int val;

 if (!dev->attached)
  return IRQ_NONE;


 val = inl(dev->iobase + APCI2032_STATUS_REG) & APCI2032_STATUS_IRQ;
 if (!val)
  return IRQ_NONE;

 subpriv = s->private;
 spin_lock(&subpriv->spinlock);

 val = inl(dev->iobase + APCI2032_INT_STATUS_REG) & 3;

 outl(~val & 3, dev->iobase + APCI2032_INT_CTRL_REG);






 if (subpriv->active && (val & subpriv->enabled_isns) != 0) {
  unsigned short bits = 0;
  int i;


  for (i = 0; i < cmd->chanlist_len; i++) {
   unsigned int chan = CR_CHAN(cmd->chanlist[i]);

   if (val & (1 << chan))
    bits |= (1 << i);
  }

  comedi_buf_write_samples(s, &bits, 1);

  if (cmd->stop_src == TRIG_COUNT &&
      s->async->scans_done >= cmd->stop_arg)
   s->async->events |= COMEDI_CB_EOA;
 }

 spin_unlock(&subpriv->spinlock);

 comedi_handle_events(dev, s);

 return IRQ_HANDLED;
}
