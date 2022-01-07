
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci224_private {unsigned int ao_enab; unsigned int* ao_scan_order; int daccon; int ao_spinlock; scalar_t__ iobase1; int intsce; } ;
struct pci224_board {int* ao_hwrange; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {int pacer; scalar_t__ iobase; struct pci224_private* private; struct pci224_board* board_ptr; } ;
struct comedi_cmd {unsigned int chanlist_len; scalar_t__ scan_begin_src; scalar_t__ start_src; int * chanlist; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 int COMBINE (int,int,int) ;
 unsigned int CR_CHAN (int ) ;
 int CR_RANGE (int ) ;
 int EINVAL ;
 scalar_t__ PCI224_DACCEN ;
 scalar_t__ PCI224_DACCON ;
 int PCI224_DACCON_FIFOINTR_MASK ;
 int PCI224_DACCON_FIFOINTR_NHALF ;
 int PCI224_DACCON_FIFORESET ;
 int PCI224_DACCON_POLAR_MASK ;
 int PCI224_DACCON_TRIG_MASK ;
 int PCI224_DACCON_TRIG_NONE ;
 int PCI224_DACCON_VREF_MASK ;
 int PCI224_INTR_EXT ;
 scalar_t__ PCI224_INT_SCE ;
 scalar_t__ TRIG_INT ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_update_divisors (int ) ;
 int outb (int ,scalar_t__) ;
 int outw (int,scalar_t__) ;
 int pci224_ao_inttrig_start ;
 int pci224_ao_start_pacer (struct comedi_device*,struct comedi_subdevice*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pci224_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 const struct pci224_board *board = dev->board_ptr;
 struct pci224_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 int range;
 unsigned int i, j;
 unsigned int ch;
 unsigned int rank;
 unsigned long flags;


 if (!cmd->chanlist || cmd->chanlist_len == 0)
  return -EINVAL;


 devpriv->ao_enab = 0;

 for (i = 0; i < cmd->chanlist_len; i++) {
  ch = CR_CHAN(cmd->chanlist[i]);
  devpriv->ao_enab |= 1U << ch;
  rank = 0;
  for (j = 0; j < cmd->chanlist_len; j++) {
   if (CR_CHAN(cmd->chanlist[j]) < ch)
    rank++;
  }
  devpriv->ao_scan_order[rank] = i;
 }


 outw(devpriv->ao_enab, dev->iobase + PCI224_DACCEN);


 range = CR_RANGE(cmd->chanlist[0]);
 devpriv->daccon =
     COMBINE(devpriv->daccon,
      board->ao_hwrange[range] | PCI224_DACCON_TRIG_NONE |
      PCI224_DACCON_FIFOINTR_NHALF,
      PCI224_DACCON_POLAR_MASK | PCI224_DACCON_VREF_MASK |
      PCI224_DACCON_TRIG_MASK | PCI224_DACCON_FIFOINTR_MASK);
 outw(devpriv->daccon | PCI224_DACCON_FIFORESET,
      dev->iobase + PCI224_DACCON);

 if (cmd->scan_begin_src == TRIG_TIMER) {
  comedi_8254_update_divisors(dev->pacer);
  pci224_ao_start_pacer(dev, s);
 }

 spin_lock_irqsave(&devpriv->ao_spinlock, flags);
 if (cmd->start_src == TRIG_INT) {
  s->async->inttrig = pci224_ao_inttrig_start;
 } else {

  devpriv->intsce |= PCI224_INTR_EXT;
  outb(devpriv->intsce, devpriv->iobase1 + PCI224_INT_SCE);
 }
 spin_unlock_irqrestore(&devpriv->ao_spinlock, flags);

 return 0;
}
