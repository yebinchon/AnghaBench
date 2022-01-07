
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct pci230_private {scalar_t__ hwver; int adcg; unsigned short adccon; scalar_t__ daqio; scalar_t__ ai_bipolar; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {scalar_t__ iobase; int pacer; struct pci230_private* private; } ;
struct comedi_cmd {scalar_t__ scan_begin_src; unsigned int chanlist_len; scalar_t__ convert_src; int convert_arg; int scan_end_arg; int scan_begin_arg; scalar_t__ start_src; int flags; int * chanlist; } ;
struct comedi_async {int inttrig; struct comedi_cmd cmd; } ;


 scalar_t__ AREF_DIFF ;
 int CMDF_ROUND_UP ;
 scalar_t__ CR_AREF (int ) ;
 unsigned int CR_CHAN (int ) ;
 unsigned int CR_RANGE (int ) ;
 int EBUSY ;
 int GAT_GND ;
 int GAT_VCC ;
 int I8254_MODE1 ;
 int I8254_MODE3 ;
 int OWNER_AICMD ;
 scalar_t__ PCI230_ADCCON ;
 scalar_t__ PCI230_ADCEN ;
 scalar_t__ PCI230_ADCG ;
 unsigned short PCI230_ADC_FIFO_EN ;
 unsigned short PCI230_ADC_FIFO_RESET ;
 unsigned short PCI230_ADC_IM_DIF ;
 unsigned short PCI230_ADC_IM_SE ;
 unsigned short PCI230_ADC_INT_FIFO_FULL ;
 unsigned short PCI230_ADC_IR_BIP ;
 unsigned short PCI230_ADC_IR_UNI ;
 unsigned short PCI230_ADC_TRIG_Z2CT2 ;
 scalar_t__ PCI230_ZGAT_SCE ;
 unsigned int RES_Z2CT0 ;
 unsigned int RES_Z2CT1 ;
 unsigned int RES_Z2CT2 ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_INT ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_set_mode (int ,int,int ) ;
 scalar_t__ comedi_range_is_bipolar (struct comedi_subdevice*,unsigned int) ;
 int outb (unsigned char,scalar_t__) ;
 int outw (unsigned short,scalar_t__) ;
 unsigned int* pci230_ai_gain ;
 int pci230_ai_inttrig_start ;
 int pci230_ai_start (struct comedi_device*,struct comedi_subdevice*) ;
 int pci230_claim_shared (struct comedi_device*,unsigned int,int ) ;
 int pci230_ct_setup_ns_mode (struct comedi_device*,int,int ,int,int ) ;
 unsigned char pci230_gat_config (int,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int pci230_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pci230_private *devpriv = dev->private;
 unsigned int i, chan, range, diff;
 unsigned int res_mask;
 unsigned short adccon, adcen;
 unsigned char zgat;


 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;




 res_mask = 0;




 res_mask |= RES_Z2CT2;
 if (cmd->scan_begin_src != TRIG_FOLLOW) {

  res_mask |= RES_Z2CT0;
  if (cmd->scan_begin_src == TRIG_TIMER) {

   res_mask |= RES_Z2CT1;
  }
 }

 if (!pci230_claim_shared(dev, res_mask, OWNER_AICMD))
  return -EBUSY;
 adccon = PCI230_ADC_FIFO_EN;
 adcen = 0;

 if (CR_AREF(cmd->chanlist[0]) == AREF_DIFF) {

  diff = 1;
  adccon |= PCI230_ADC_IM_DIF;
 } else {

  diff = 0;
  adccon |= PCI230_ADC_IM_SE;
 }

 range = CR_RANGE(cmd->chanlist[0]);
 devpriv->ai_bipolar = comedi_range_is_bipolar(s, range);
 if (devpriv->ai_bipolar)
  adccon |= PCI230_ADC_IR_BIP;
 else
  adccon |= PCI230_ADC_IR_UNI;

 for (i = 0; i < cmd->chanlist_len; i++) {
  unsigned int gainshift;

  chan = CR_CHAN(cmd->chanlist[i]);
  range = CR_RANGE(cmd->chanlist[i]);
  if (diff) {
   gainshift = 2 * chan;
   if (devpriv->hwver == 0) {




    adcen |= 3 << gainshift;
   } else {




    adcen |= 1 << gainshift;
   }
  } else {
   gainshift = chan & ~1;
   adcen |= 1 << chan;
  }
  devpriv->adcg = (devpriv->adcg & ~(3 << gainshift)) |
    (pci230_ai_gain[range] << gainshift);
 }


 outw(adcen, devpriv->daqio + PCI230_ADCEN);


 outw(devpriv->adcg, devpriv->daqio + PCI230_ADCG);





 comedi_8254_set_mode(dev->pacer, 2, I8254_MODE1);





 adccon |= PCI230_ADC_INT_FIFO_FULL | PCI230_ADC_TRIG_Z2CT2;
 devpriv->adccon = adccon;
 outw(adccon | PCI230_ADC_FIFO_RESET, devpriv->daqio + PCI230_ADCCON);
 usleep_range(25, 100);


 outw(adccon | PCI230_ADC_FIFO_RESET, devpriv->daqio + PCI230_ADCCON);

 if (cmd->convert_src == TRIG_TIMER) {





  zgat = pci230_gat_config(2, GAT_GND);
  outb(zgat, dev->iobase + PCI230_ZGAT_SCE);

  pci230_ct_setup_ns_mode(dev, 2, I8254_MODE3, cmd->convert_arg,
     cmd->flags);
  if (cmd->scan_begin_src != TRIG_FOLLOW) {
   zgat = pci230_gat_config(0, GAT_VCC);
   outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
   pci230_ct_setup_ns_mode(dev, 0, I8254_MODE1,
      ((u64)cmd->convert_arg *
       cmd->scan_end_arg),
      CMDF_ROUND_UP);
   if (cmd->scan_begin_src == TRIG_TIMER) {






    zgat = pci230_gat_config(1, GAT_GND);
    outb(zgat, dev->iobase + PCI230_ZGAT_SCE);
    pci230_ct_setup_ns_mode(dev, 1, I8254_MODE3,
       cmd->scan_begin_arg,
       cmd->flags);
   }
  }
 }

 if (cmd->start_src == TRIG_INT)
  s->async->inttrig = pci230_ai_inttrig_start;
 else
  pci230_ai_start(dev, s);

 return 0;
}
