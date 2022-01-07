
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; int class_dev; struct cb_pcidas_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; int scan_begin_src; int * chanlist; } ;
struct comedi_async {int inttrig; struct comedi_cmd cmd; } ;
struct cb_pcidas_private {int ao_ctrl; int ao_pacer; scalar_t__ pcibar4; scalar_t__ pcibar1; } ;


 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int PCIDAS_AO_CHAN_EN (unsigned int) ;
 scalar_t__ PCIDAS_AO_FIFO_CLR_REG ;
 int PCIDAS_AO_PACER_EXTP ;
 int PCIDAS_AO_PACER_INT ;
 int PCIDAS_AO_RANGE (unsigned int,unsigned int) ;
 scalar_t__ PCIDAS_AO_REG ;


 int cb_pcidas_ao_inttrig ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_update_divisors (int ) ;
 int dev_err (int ,char*) ;
 int outw (int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cb_pcidas_ao_cmd(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct cb_pcidas_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 unsigned int i;
 unsigned long flags;


 spin_lock_irqsave(&dev->spinlock, flags);
 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned int chan = CR_CHAN(cmd->chanlist[i]);
  unsigned int range = CR_RANGE(cmd->chanlist[i]);


  devpriv->ao_ctrl |= PCIDAS_AO_CHAN_EN(chan);

  devpriv->ao_ctrl |= PCIDAS_AO_RANGE(chan, range);
 }


 outw(devpriv->ao_ctrl, devpriv->pcibar1 + PCIDAS_AO_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);


 outw(0, devpriv->pcibar4 + PCIDAS_AO_FIFO_CLR_REG);


 if (cmd->scan_begin_src == 128) {
  comedi_8254_update_divisors(devpriv->ao_pacer);
  comedi_8254_pacer_enable(devpriv->ao_pacer, 1, 2, 1);
 }


 spin_lock_irqsave(&dev->spinlock, flags);
 switch (cmd->scan_begin_src) {
 case 128:
  devpriv->ao_ctrl |= PCIDAS_AO_PACER_INT;
  break;
 case 129:
  devpriv->ao_ctrl |= PCIDAS_AO_PACER_EXTP;
  break;
 default:
  spin_unlock_irqrestore(&dev->spinlock, flags);
  dev_err(dev->class_dev, "error setting dac pacer source\n");
  return -1;
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);

 async->inttrig = cb_pcidas_ao_inttrig;

 return 0;
}
