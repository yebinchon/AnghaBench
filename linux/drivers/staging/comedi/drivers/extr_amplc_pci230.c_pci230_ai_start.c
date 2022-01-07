
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci230_private {int ai_cmd_started; unsigned char ier; unsigned short adccon; scalar_t__ daqio; int isr_spinlock; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; struct pci230_private* private; } ;
struct comedi_cmd {int convert_src; int convert_arg; int scan_begin_src; } ;
struct comedi_async {int inttrig; struct comedi_cmd cmd; } ;


 int CR_EDGE ;
 int CR_INVERT ;
 int GAT_EXT ;
 int GAT_NOUTNM2 ;
 int GAT_VCC ;
 int OWNER_AICMD ;
 scalar_t__ PCI230_ADCCON ;
 unsigned short PCI230_ADC_TRIG_EXTN ;
 unsigned short PCI230_ADC_TRIG_EXTP ;
 unsigned short PCI230_ADC_TRIG_MASK ;
 unsigned short PCI230_ADC_TRIG_NONE ;
 unsigned short PCI230_ADC_TRIG_Z2CT2 ;
 unsigned char PCI230_INT_ADC ;
 scalar_t__ PCI230_INT_SCE ;
 scalar_t__ PCI230_ZGAT_SCE ;
 int RES_Z2CT2 ;

 int TRIG_FOLLOW ;


 int outb (unsigned char,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 int pci230_ai_inttrig_convert ;
 int pci230_ai_inttrig_scan_begin ;
 int pci230_ai_update_fifo_trigger_level (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned char pci230_gat_config (int,int ) ;
 int pci230_release_shared (struct comedi_device*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pci230_ai_start(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct pci230_private *devpriv = dev->private;
 unsigned long irqflags;
 unsigned short conv;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;

 devpriv->ai_cmd_started = 1;


 spin_lock_irqsave(&devpriv->isr_spinlock, irqflags);
 devpriv->ier |= PCI230_INT_ADC;
 outb(devpriv->ier, dev->iobase + PCI230_INT_SCE);
 spin_unlock_irqrestore(&devpriv->isr_spinlock, irqflags);





 switch (cmd->convert_src) {
 default:
  conv = PCI230_ADC_TRIG_NONE;
  break;
 case 128:

  conv = PCI230_ADC_TRIG_Z2CT2;
  break;
 case 130:
  if (cmd->convert_arg & CR_EDGE) {
   if ((cmd->convert_arg & CR_INVERT) == 0) {

    conv = PCI230_ADC_TRIG_EXTP;
   } else {

    conv = PCI230_ADC_TRIG_EXTN;
   }
  } else {

   if (cmd->convert_arg) {

    conv = PCI230_ADC_TRIG_EXTP;
   } else {

    conv = PCI230_ADC_TRIG_EXTN;
   }
  }
  break;
 case 129:




  conv = PCI230_ADC_TRIG_Z2CT2;
  break;
 }
 devpriv->adccon = (devpriv->adccon & ~PCI230_ADC_TRIG_MASK) | conv;
 outw(devpriv->adccon, devpriv->daqio + PCI230_ADCCON);
 if (cmd->convert_src == 129)
  async->inttrig = pci230_ai_inttrig_convert;





 pci230_ai_update_fifo_trigger_level(dev, s);
 if (cmd->convert_src == 128) {

  unsigned char zgat;

  if (cmd->scan_begin_src != TRIG_FOLLOW) {




   zgat = pci230_gat_config(2, GAT_NOUTNM2);
  } else {




   zgat = pci230_gat_config(2, GAT_VCC);
  }
  outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
  if (cmd->scan_begin_src != TRIG_FOLLOW) {

   switch (cmd->scan_begin_src) {
   default:
    zgat = pci230_gat_config(0, GAT_VCC);
    break;
   case 130:
    zgat = pci230_gat_config(0, GAT_EXT);
    break;
   case 128:




    zgat = pci230_gat_config(0, GAT_NOUTNM2);
    break;
   case 129:




    zgat = pci230_gat_config(0, GAT_VCC);
    break;
   }
   outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
   switch (cmd->scan_begin_src) {
   case 128:




    zgat = pci230_gat_config(1, GAT_VCC);
    outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
    break;
   case 129:
    async->inttrig = pci230_ai_inttrig_scan_begin;
    break;
   }
  }
 } else if (cmd->convert_src != 129) {

  pci230_release_shared(dev, RES_Z2CT2, OWNER_AICMD);
 }
}
