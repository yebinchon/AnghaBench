
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci230_private {int hwver; unsigned short daccon; scalar_t__ daqio; scalar_t__ ao_bipolar; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; unsigned int chanlist_len; int flags; int scan_begin_arg; int * chanlist; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EBUSY ;
 int GAT_GND ;
 int I8254_MODE3 ;
 int OWNER_AOCMD ;
 scalar_t__ PCI230P2_DACEN ;
 unsigned short PCI230P2_DAC_FIFO_EN ;
 unsigned short PCI230P2_DAC_FIFO_RESET ;
 unsigned short PCI230P2_DAC_FIFO_UNDERRUN_CLEAR ;
 unsigned short PCI230P2_DAC_INT_FIFO_NHALF ;
 unsigned short PCI230P2_DAC_TRIG_NONE ;
 scalar_t__ PCI230_DACCON ;
 unsigned short PCI230_DAC_OR_BIP ;
 unsigned short PCI230_DAC_OR_UNI ;
 scalar_t__ PCI230_ZGAT_SCE ;
 int RES_Z2CT1 ;
 scalar_t__ TRIG_TIMER ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int outb (int ,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int pci230_ao_inttrig_start ;
 int pci230_claim_shared (struct comedi_device*,int ,int ) ;
 int pci230_ct_setup_ns_mode (struct comedi_device*,int,int ,int ,int ) ;
 int pci230_gat_config (int,int ) ;

__attribute__((used)) static int pci230_ao_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pci230_private *devpriv = dev->private;
 unsigned short daccon;
 unsigned int range;


 struct comedi_cmd *cmd = &s->async->cmd;

 if (cmd->scan_begin_src == TRIG_TIMER) {

  if (!pci230_claim_shared(dev, RES_Z2CT1, OWNER_AOCMD))
   return -EBUSY;
 }





 range = CR_RANGE(cmd->chanlist[0]);
 devpriv->ao_bipolar = comedi_range_is_bipolar(s, range);
 daccon = devpriv->ao_bipolar ? PCI230_DAC_OR_BIP : PCI230_DAC_OR_UNI;

 if (devpriv->hwver >= 2) {
  unsigned short dacen;
  unsigned int i;

  dacen = 0;
  for (i = 0; i < cmd->chanlist_len; i++)
   dacen |= 1 << CR_CHAN(cmd->chanlist[i]);


  outw(dacen, devpriv->daqio + PCI230P2_DACEN);
  daccon |= PCI230P2_DAC_FIFO_EN | PCI230P2_DAC_FIFO_RESET |
     PCI230P2_DAC_FIFO_UNDERRUN_CLEAR |
     PCI230P2_DAC_TRIG_NONE | PCI230P2_DAC_INT_FIFO_NHALF;
 }


 outw(daccon, devpriv->daqio + PCI230_DACCON);

 devpriv->daccon = daccon & ~(PCI230P2_DAC_FIFO_RESET |
         PCI230P2_DAC_FIFO_UNDERRUN_CLEAR);

 if (cmd->scan_begin_src == TRIG_TIMER) {





  outb(pci230_gat_config(1, GAT_GND),
       dev->iobase + PCI230_ZGAT_SCE);
  pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
     cmd->scan_begin_arg,
     cmd->flags);
 }


 s->async->inttrig = pci230_ao_inttrig_start;

 return 0;
}
