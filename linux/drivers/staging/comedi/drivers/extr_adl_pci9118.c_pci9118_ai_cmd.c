
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci9118_private {int ai_flags; int ai_add_front; int ai_add_back; int ai_neverending; int usedma; unsigned int softsshdelay; unsigned int ai_ns_min; unsigned int ai_n_realscanlen; int ai_do; int ai_cfg; scalar_t__ iobase_a; scalar_t__ ai_act_dmapos; int ai_ctrl; struct pci9118_dmabuf* dmabuf; int int_ctrl; scalar_t__ master; int ai12_startstop; } ;
struct pci9118_dmabuf {int hw; } ;
struct comedi_subdevice {unsigned int len_chanlist; TYPE_1__* async; } ;
struct comedi_device {scalar_t__ iobase; int class_dev; struct comedi_8254* pacer; struct pci9118_private* private; } ;
struct comedi_cmd {int flags; scalar_t__ start_src; scalar_t__ stop_src; int scan_end_arg; scalar_t__ convert_src; scalar_t__ scan_begin_src; unsigned int convert_arg; int chanlist_len; int scan_begin_arg; int chanlist; } ;
struct comedi_8254 {int divisor2; int divisor1; } ;
struct TYPE_2__ {int inttrig; struct comedi_cmd cmd; } ;


 int AINT_WRITE_COMPL ;
 scalar_t__ AMCC_OP_REG_INTCSR ;
 int CMDF_ROUND_NEAREST ;
 int CMDF_WAKE_EOS ;
 int EINVAL ;
 int EIO ;
 int I8254_BINARY ;
 int I8254_MODE0 ;
 scalar_t__ PCI9118_AI_BURST_NUM_REG ;
 int PCI9118_AI_CFG_AM ;
 int PCI9118_AI_CFG_BM ;
 int PCI9118_AI_CFG_BS ;
 int PCI9118_AI_CFG_BSSH ;
 int PCI9118_AI_CFG_PDTRG ;
 int PCI9118_AI_CFG_PETRG ;
 scalar_t__ PCI9118_AI_CFG_REG ;
 int PCI9118_AI_CFG_START ;
 int PCI9118_AI_CTRL_DMA ;
 int PCI9118_AI_CTRL_EXTM ;
 int PCI9118_AI_CTRL_INT ;
 int PCI9118_AI_CTRL_TMRTR ;
 scalar_t__ PCI9118_AI_STATUS_REG ;
 scalar_t__ PCI9118_INT_CTRL_REG ;
 int PCI9118_INT_CTRL_TIMER ;
 int START_AI_EXT ;
 int STOP_AI_EXT ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_FOLLOW ;
 scalar_t__ TRIG_INT ;
 scalar_t__ TRIG_NONE ;
 scalar_t__ TRIG_NOW ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_cascade_ns_to_timer (struct comedi_8254*,int*,int) ;
 int comedi_8254_load (struct comedi_8254*,int ,int,int) ;
 int comedi_8254_update_divisors (struct comedi_8254*) ;
 int dev_err (int ,char*) ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int pci9118_ai_cmd_start (struct comedi_device*) ;
 int pci9118_ai_inttrig ;
 int pci9118_ai_reset_fifo (struct comedi_device*) ;
 int pci9118_ai_setup_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int pci9118_amcc_int_ena (struct comedi_device*,int) ;
 int pci9118_calc_divisors (struct comedi_device*,struct comedi_subdevice*,int *,int*,int,unsigned int,int *,int *,unsigned int) ;
 int pci9118_exttrg_enable (struct comedi_device*,int) ;
 int pci9118_set_chanlist (struct comedi_device*,struct comedi_subdevice*,unsigned int,int ,unsigned int,unsigned int) ;
 int udelay (int) ;

__attribute__((used)) static int pci9118_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pci9118_private *devpriv = dev->private;
 struct comedi_8254 *pacer = dev->pacer;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int addchans = 0;
 unsigned int scanlen;

 devpriv->ai12_startstop = 0;
 devpriv->ai_flags = cmd->flags;
 devpriv->ai_add_front = 0;
 devpriv->ai_add_back = 0;


 if (cmd->start_src == TRIG_EXT)
  devpriv->ai12_startstop |= START_AI_EXT;
 if (cmd->stop_src == TRIG_EXT) {
  devpriv->ai_neverending = 1;
  devpriv->ai12_startstop |= STOP_AI_EXT;
 }
 if (cmd->stop_src == TRIG_NONE)
  devpriv->ai_neverending = 1;
 if (cmd->stop_src == TRIG_COUNT)
  devpriv->ai_neverending = 0;





 devpriv->ai_add_front = 0;
 devpriv->ai_add_back = 0;
 if (devpriv->master) {
  devpriv->usedma = 1;
  if ((cmd->flags & CMDF_WAKE_EOS) &&
      (cmd->scan_end_arg == 1)) {
   if (cmd->convert_src == TRIG_NOW)
    devpriv->ai_add_back = 1;
   if (cmd->convert_src == TRIG_TIMER) {
    devpriv->usedma = 0;




   }
  }
  if ((cmd->flags & CMDF_WAKE_EOS) &&
      (cmd->scan_end_arg & 1) &&
      (cmd->scan_end_arg > 1)) {
   if (cmd->scan_begin_src == TRIG_FOLLOW) {
    devpriv->usedma = 0;



   } else {



    devpriv->ai_add_back = 1;
   }
  }
 } else {
  devpriv->usedma = 0;
 }





 if (cmd->convert_src == TRIG_NOW && devpriv->softsshdelay) {
  devpriv->ai_add_front = 2;
  if ((devpriv->usedma == 1) && (devpriv->ai_add_back == 1)) {

   devpriv->ai_add_front++;
   devpriv->ai_add_back = 0;
  }
  if (cmd->convert_arg < devpriv->ai_ns_min)
   cmd->convert_arg = devpriv->ai_ns_min;
  addchans = devpriv->softsshdelay / cmd->convert_arg;
  if (devpriv->softsshdelay % cmd->convert_arg)
   addchans++;
  if (addchans > (devpriv->ai_add_front - 1)) {

   devpriv->ai_add_front = addchans + 1;
   if (devpriv->usedma == 1)
    if ((devpriv->ai_add_front +
         cmd->chanlist_len +
         devpriv->ai_add_back) & 1)
     devpriv->ai_add_front++;

  }
 }

 scanlen = devpriv->ai_add_front + cmd->chanlist_len +
    devpriv->ai_add_back;




 devpriv->ai_n_realscanlen = scanlen *
        (cmd->scan_end_arg / cmd->chanlist_len);

 if (scanlen > s->len_chanlist) {
  dev_err(dev->class_dev,
   "range/channel list is too long for actual configuration!\n");
  return -EINVAL;
 }





 pci9118_set_chanlist(dev, s, cmd->chanlist_len, cmd->chanlist,
        devpriv->ai_add_front, devpriv->ai_add_back);


 devpriv->ai_do = 0;
 if (cmd->scan_begin_src != TRIG_TIMER &&
     cmd->convert_src == TRIG_TIMER) {

  if (cmd->scan_begin_src == TRIG_EXT)
   devpriv->ai_do = 4;
  else
   devpriv->ai_do = 1;

  comedi_8254_cascade_ns_to_timer(pacer, &cmd->convert_arg,
      devpriv->ai_flags &
      CMDF_ROUND_NEAREST);
  comedi_8254_update_divisors(pacer);

  devpriv->ai_ctrl |= PCI9118_AI_CTRL_TMRTR;

  if (!devpriv->usedma) {
   devpriv->ai_ctrl |= PCI9118_AI_CTRL_INT;
   devpriv->int_ctrl |= PCI9118_INT_CTRL_TIMER;
  }

  if (cmd->scan_begin_src == TRIG_EXT) {
   struct pci9118_dmabuf *dmabuf = &devpriv->dmabuf[0];

   devpriv->ai_cfg |= PCI9118_AI_CFG_AM;
   outl(devpriv->ai_cfg, dev->iobase + PCI9118_AI_CFG_REG);
   comedi_8254_load(pacer, 0, dmabuf->hw >> 1,
      I8254_MODE0 | I8254_BINARY);
   devpriv->ai_cfg |= PCI9118_AI_CFG_START;
  }
 }

 if (cmd->scan_begin_src == TRIG_TIMER &&
     cmd->convert_src != TRIG_EXT) {
  if (!devpriv->usedma) {
   dev_err(dev->class_dev,
    "cmd->scan_begin_src=TRIG_TIMER works only with bus mastering!\n");
   return -EIO;
  }


  devpriv->ai_do = 2;

  pci9118_calc_divisors(dev, s,
          &cmd->scan_begin_arg, &cmd->convert_arg,
          devpriv->ai_flags,
          devpriv->ai_n_realscanlen,
          &pacer->divisor1,
          &pacer->divisor2,
          devpriv->ai_add_front);

  devpriv->ai_ctrl |= PCI9118_AI_CTRL_TMRTR;
  devpriv->ai_cfg |= PCI9118_AI_CFG_BM | PCI9118_AI_CFG_BS;
  if (cmd->convert_src == TRIG_NOW && !devpriv->softsshdelay)
   devpriv->ai_cfg |= PCI9118_AI_CFG_BSSH;
  outl(devpriv->ai_n_realscanlen,
       dev->iobase + PCI9118_AI_BURST_NUM_REG);
 }

 if (cmd->scan_begin_src == TRIG_FOLLOW &&
     cmd->convert_src == TRIG_EXT) {

  devpriv->ai_do = 3;

  devpriv->ai_ctrl |= PCI9118_AI_CTRL_EXTM;
 }

 if (devpriv->ai_do == 0) {
  dev_err(dev->class_dev,
   "Unable to determine acquisition mode! BUG in (*do_cmdtest)?\n");
  return -EINVAL;
 }

 if (devpriv->usedma)
  devpriv->ai_ctrl |= PCI9118_AI_CTRL_DMA;


 devpriv->ai_cfg = PCI9118_AI_CFG_PDTRG | PCI9118_AI_CFG_PETRG;
 outl(devpriv->ai_cfg, dev->iobase + PCI9118_AI_CFG_REG);
 udelay(1);
 pci9118_ai_reset_fifo(dev);


 inl(dev->iobase + PCI9118_AI_STATUS_REG);
 inl(dev->iobase + PCI9118_INT_CTRL_REG);

 devpriv->ai_act_dmapos = 0;

 if (devpriv->usedma) {
  pci9118_ai_setup_dma(dev, s);

  outl(0x02000000 | AINT_WRITE_COMPL,
       devpriv->iobase_a + AMCC_OP_REG_INTCSR);
 } else {
  pci9118_amcc_int_ena(dev, 1);
 }


 if (cmd->start_src == TRIG_NOW)
  pci9118_ai_cmd_start(dev);
 else if (cmd->start_src == TRIG_INT)
  s->async->inttrig = pci9118_ai_inttrig;


 if (cmd->start_src == TRIG_EXT || cmd->stop_src == TRIG_EXT)
  pci9118_exttrg_enable(dev, 1);

 return 0;
}
