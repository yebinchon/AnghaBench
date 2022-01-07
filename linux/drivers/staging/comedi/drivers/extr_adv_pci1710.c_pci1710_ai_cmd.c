
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci1710_private {int ctrl; int ctrl_ext; int ai_et; int saved_seglen; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct pci1710_private* private; } ;
struct comedi_cmd {int flags; scalar_t__ convert_src; scalar_t__ start_src; int chanlist_len; int chanlist; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int CMDF_WAKE_EOS ;
 scalar_t__ PCI171X_CLRFIFO_REG ;
 scalar_t__ PCI171X_CLRINT_REG ;
 int PCI171X_CTRL_CNT0 ;
 int PCI171X_CTRL_EXT ;
 int PCI171X_CTRL_GATE ;
 int PCI171X_CTRL_IRQEN ;
 int PCI171X_CTRL_ONEFH ;
 int PCI171X_CTRL_PACER ;
 scalar_t__ PCI171X_CTRL_REG ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_NOW ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_8254_update_divisors (int ) ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci1710_ai_setup_chanlist (struct comedi_device*,struct comedi_subdevice*,int ,int ,int ) ;

__attribute__((used)) static int pci1710_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pci1710_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;

 pci1710_ai_setup_chanlist(dev, s, cmd->chanlist, cmd->chanlist_len,
      devpriv->saved_seglen);

 outb(0, dev->iobase + PCI171X_CLRFIFO_REG);
 outb(0, dev->iobase + PCI171X_CLRINT_REG);

 devpriv->ctrl &= PCI171X_CTRL_CNT0;
 if ((cmd->flags & CMDF_WAKE_EOS) == 0)
  devpriv->ctrl |= PCI171X_CTRL_ONEFH;

 if (cmd->convert_src == TRIG_TIMER) {
  comedi_8254_update_divisors(dev->pacer);

  devpriv->ctrl |= PCI171X_CTRL_PACER | PCI171X_CTRL_IRQEN;
  if (cmd->start_src == TRIG_EXT) {
   devpriv->ctrl_ext = devpriv->ctrl;
   devpriv->ctrl &= ~(PCI171X_CTRL_PACER |
        PCI171X_CTRL_ONEFH |
        PCI171X_CTRL_GATE);
   devpriv->ctrl |= PCI171X_CTRL_EXT;
   devpriv->ai_et = 1;
  } else {
   devpriv->ai_et = 0;
  }
  outw(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);

  if (cmd->start_src == TRIG_NOW)
   comedi_8254_pacer_enable(dev->pacer, 1, 2, 1);
 } else {
  devpriv->ctrl |= PCI171X_CTRL_EXT | PCI171X_CTRL_IRQEN;
  outw(devpriv->ctrl, dev->iobase + PCI171X_CTRL_REG);
 }

 return 0;
}
