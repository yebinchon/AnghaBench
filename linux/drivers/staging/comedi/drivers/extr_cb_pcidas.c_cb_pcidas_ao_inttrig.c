
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; struct cb_pcidas_private* private; struct cb_pcidas_board* board_ptr; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct comedi_async {int * inttrig; struct comedi_cmd cmd; } ;
struct cb_pcidas_private {int ctrl; int ao_ctrl; scalar_t__ pcibar1; } ;
struct cb_pcidas_board {int fifo_size; } ;


 int EINVAL ;
 int PCIDAS_AO_DACEN ;
 int PCIDAS_AO_EMPTY ;
 scalar_t__ PCIDAS_AO_REG ;
 int PCIDAS_AO_START ;
 int PCIDAS_CTRL_DAEMI ;
 int PCIDAS_CTRL_DAEMIE ;
 int PCIDAS_CTRL_DAHFI ;
 int PCIDAS_CTRL_DAHFIE ;
 scalar_t__ PCIDAS_CTRL_REG ;
 int cb_pcidas_ao_load_fifo (struct comedi_device*,struct comedi_subdevice*,int ) ;
 int outw (int,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ao_inttrig(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned int trig_num)
{
 const struct cb_pcidas_board *board = dev->board_ptr;
 struct cb_pcidas_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned long flags;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 cb_pcidas_ao_load_fifo(dev, s, board->fifo_size);


 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->ctrl |= PCIDAS_CTRL_DAEMIE | PCIDAS_CTRL_DAHFIE;


 outw(devpriv->ctrl | PCIDAS_CTRL_DAEMI | PCIDAS_CTRL_DAHFI,
      devpriv->pcibar1 + PCIDAS_CTRL_REG);


 devpriv->ao_ctrl |= PCIDAS_AO_START | PCIDAS_AO_DACEN | PCIDAS_AO_EMPTY;
 outw(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);

 spin_unlock_irqrestore(&dev->spinlock, flags);

 async->inttrig = ((void*)0);

 return 0;
}
