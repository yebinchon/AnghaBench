
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int count; int current_transfer; int cmd1; int cmd3; int cmd4; int cmd2; int (* write_byte ) (struct comedi_device*,int,int ) ;struct comedi_8254* counter; scalar_t__ dma; } ;
struct labpc_boardinfo {scalar_t__ is_labpc1200; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; struct comedi_8254* pacer; struct labpc_private* private; struct labpc_boardinfo* board_ptr; } ;
struct comedi_cmd {unsigned int* chanlist; int chanlist_len; scalar_t__ stop_src; int stop_arg; int flags; scalar_t__ convert_src; scalar_t__ scan_begin_src; scalar_t__ start_src; } ;
struct comedi_async {struct comedi_cmd cmd; } ;
struct comedi_8254 {int divisor1; int divisor2; int divisor; } ;
typedef enum transfer_type { ____Placeholder_transfer_type } transfer_type ;
typedef enum scan_mode { ____Placeholder_scan_mode } scan_mode ;


 unsigned int AREF_DIFF ;
 int CMD1_REG ;
 int CMD1_SCANEN ;
 int CMD2_HWTRIG ;
 int CMD2_PRETRIG ;
 int CMD2_REG ;
 int CMD2_SWTRIG ;
 int CMD2_TBSEL ;
 int CMD3_ERRINTEN ;
 int CMD3_FIFOINTEN ;
 int CMD3_REG ;
 int CMD4_ECLKRCV ;
 int CMD4_EOIRCV ;
 int CMD4_INTSCAN ;
 int CMD4_REG ;
 int CMD4_SEDIFF ;
 int CMDF_PRIORITY ;
 int CMDF_WAKE_EOS ;
 unsigned int CR_AREF (unsigned int) ;
 unsigned int CR_CHAN (unsigned int) ;
 unsigned int CR_RANGE (unsigned int) ;
 int I8254_BINARY ;
 int I8254_MODE0 ;
 int I8254_MODE2 ;
 int I8254_MODE3 ;
 int INTERVAL_COUNT_REG ;
 int INTERVAL_STROBE_REG ;
 int MODE_MULT_CHAN_DOWN ;
 int MODE_MULT_CHAN_UP ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 scalar_t__ TRIG_TIMER ;
 int comedi_8254_load (struct comedi_8254*,int,int,int) ;
 int comedi_8254_set_mode (struct comedi_8254*,int,int) ;
 int comedi_8254_update_divisors (struct comedi_8254*) ;
 int comedi_8254_write (struct comedi_8254*,int ,int ) ;
 int fifo_half_full_transfer ;
 int fifo_not_empty_transfer ;
 int isa_dma_transfer ;
 scalar_t__ labpc_ai_convert_period (struct comedi_cmd*,int) ;
 int labpc_ai_scan_mode (struct comedi_cmd*) ;
 scalar_t__ labpc_ai_scan_period (struct comedi_cmd*,int) ;
 int labpc_ai_set_chan_and_gain (struct comedi_device*,int,unsigned int,unsigned int,unsigned int) ;
 int labpc_cancel (struct comedi_device*,struct comedi_subdevice*) ;
 int labpc_clear_adc_fifo (struct comedi_device*) ;
 int labpc_setup_cmd6_reg (struct comedi_device*,struct comedi_subdevice*,int,int,unsigned int,unsigned int,int) ;
 int labpc_setup_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int labpc_use_continuous_mode (struct comedi_cmd*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;
 int stub3 (struct comedi_device*,int,int ) ;
 int stub4 (struct comedi_device*,int,int ) ;
 int stub5 (struct comedi_device*,int,int ) ;
 int stub6 (struct comedi_device*,int,int ) ;
 int udelay (int) ;

__attribute__((used)) static int labpc_ai_cmd(struct comedi_device *dev, struct comedi_subdevice *s)
{
 const struct labpc_boardinfo *board = dev->board_ptr;
 struct labpc_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 enum scan_mode mode = labpc_ai_scan_mode(cmd);
 unsigned int chanspec = (mode == MODE_MULT_CHAN_UP) ?
    cmd->chanlist[cmd->chanlist_len - 1] :
    cmd->chanlist[0];
 unsigned int chan = CR_CHAN(chanspec);
 unsigned int range = CR_RANGE(chanspec);
 unsigned int aref = CR_AREF(chanspec);
 enum transfer_type xfer;
 unsigned long flags;


 labpc_cancel(dev, s);


 if (cmd->stop_src == TRIG_COUNT)
  devpriv->count = cmd->stop_arg * cmd->chanlist_len;


 if (cmd->stop_src == TRIG_EXT) {




  comedi_8254_load(devpriv->counter, 1,
     3, I8254_MODE0 | I8254_BINARY);
 } else {

  comedi_8254_set_mode(devpriv->counter, 1,
         I8254_MODE0 | I8254_BINARY);
 }


 if (devpriv->dma &&
     (cmd->flags & (CMDF_WAKE_EOS | CMDF_PRIORITY)) == 0) {




  xfer = isa_dma_transfer;
 } else if (board->is_labpc1200 &&
     (cmd->flags & CMDF_WAKE_EOS) == 0 &&
     (cmd->stop_src != TRIG_COUNT || devpriv->count > 256)) {





  xfer = fifo_half_full_transfer;
 } else {
  xfer = fifo_not_empty_transfer;
 }
 devpriv->current_transfer = xfer;

 labpc_ai_set_chan_and_gain(dev, mode, chan, range, aref);

 labpc_setup_cmd6_reg(dev, s, mode, xfer, range, aref,
        (cmd->stop_src == TRIG_EXT));


 if (mode == MODE_MULT_CHAN_UP || mode == MODE_MULT_CHAN_DOWN) {
  devpriv->cmd1 |= CMD1_SCANEN;





  udelay(1);
  devpriv->write_byte(dev, devpriv->cmd1, CMD1_REG);
 }

 devpriv->write_byte(dev, cmd->chanlist_len, INTERVAL_COUNT_REG);

 devpriv->write_byte(dev, 0x1, INTERVAL_STROBE_REG);

 if (cmd->convert_src == TRIG_TIMER ||
     cmd->scan_begin_src == TRIG_TIMER) {
  struct comedi_8254 *pacer = dev->pacer;
  struct comedi_8254 *counter = devpriv->counter;

  comedi_8254_update_divisors(pacer);


  comedi_8254_load(pacer, 0, pacer->divisor1,
     I8254_MODE3 | I8254_BINARY);


  comedi_8254_set_mode(counter, 0, I8254_MODE2 | I8254_BINARY);
  if (labpc_ai_convert_period(cmd, mode))
   comedi_8254_write(counter, 0, pacer->divisor);


  if (labpc_ai_scan_period(cmd, mode))
   comedi_8254_load(pacer, 1, pacer->divisor2,
      I8254_MODE2 | I8254_BINARY);
 }

 labpc_clear_adc_fifo(dev);

 if (xfer == isa_dma_transfer)
  labpc_setup_dma(dev, s);


 devpriv->cmd3 |= CMD3_ERRINTEN;

 if (xfer == fifo_not_empty_transfer)
  devpriv->cmd3 |= CMD3_FIFOINTEN;
 devpriv->write_byte(dev, devpriv->cmd3, CMD3_REG);


 devpriv->cmd4 = 0;
 if (cmd->convert_src != TRIG_EXT)
  devpriv->cmd4 |= CMD4_ECLKRCV;




 if (!labpc_use_continuous_mode(cmd, mode)) {
  devpriv->cmd4 |= CMD4_INTSCAN;
  if (cmd->scan_begin_src == TRIG_EXT)
   devpriv->cmd4 |= CMD4_EOIRCV;
 }

 if (aref == AREF_DIFF)
  devpriv->cmd4 |= CMD4_SEDIFF;
 devpriv->write_byte(dev, devpriv->cmd4, CMD4_REG);



 spin_lock_irqsave(&dev->spinlock, flags);


 devpriv->cmd2 |= CMD2_TBSEL;

 devpriv->cmd2 &= ~(CMD2_SWTRIG | CMD2_HWTRIG | CMD2_PRETRIG);
 if (cmd->start_src == TRIG_EXT)
  devpriv->cmd2 |= CMD2_HWTRIG;
 else
  devpriv->cmd2 |= CMD2_SWTRIG;
 if (cmd->stop_src == TRIG_EXT)
  devpriv->cmd2 |= (CMD2_HWTRIG | CMD2_PRETRIG);

 devpriv->write_byte(dev, devpriv->cmd2, CMD2_REG);

 spin_unlock_irqrestore(&dev->spinlock, flags);

 return 0;
}
