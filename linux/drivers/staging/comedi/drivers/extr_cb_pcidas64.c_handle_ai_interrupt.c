
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pcidas64_private {scalar_t__ ai_cmd_running; scalar_t__ plx9080_iobase; } ;
struct pcidas64_board {scalar_t__ layout; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int spinlock; int class_dev; struct comedi_subdevice* read_subdev; struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 unsigned short ADC_DONE_BIT ;
 unsigned short ADC_INTR_PENDING_BIT ;
 unsigned short ADC_OVERRUN_BIT ;
 unsigned short ADC_STOP_BIT ;
 int CMDF_WAKE_EOS ;
 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 scalar_t__ LAYOUT_4020 ;
 int PLX_DMACSR_CLEARINTR ;
 int PLX_DMACSR_ENABLE ;
 unsigned int PLX_INTCSR_DMA1IA ;
 scalar_t__ PLX_REG_DMACSR1 ;
 scalar_t__ TRIG_COUNT ;
 scalar_t__ TRIG_EXT ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int dev_err (int ,char*) ;
 int drain_dma_buffers (struct comedi_device*,int) ;
 int pio_drain_ai_fifo (struct comedi_device*) ;
 int readb (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writeb (int,scalar_t__) ;

__attribute__((used)) static void handle_ai_interrupt(struct comedi_device *dev,
    unsigned short status,
    unsigned int plx_status)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 u8 dma1_status;
 unsigned long flags;


 if (status & ADC_OVERRUN_BIT) {
  dev_err(dev->class_dev, "fifo overrun\n");
  async->events |= COMEDI_CB_ERROR;
 }

 spin_lock_irqsave(&dev->spinlock, flags);
 dma1_status = readb(devpriv->plx9080_iobase + PLX_REG_DMACSR1);
 if (plx_status & PLX_INTCSR_DMA1IA) {
  writeb((dma1_status & PLX_DMACSR_ENABLE) | PLX_DMACSR_CLEARINTR,
         devpriv->plx9080_iobase + PLX_REG_DMACSR1);

  if (dma1_status & PLX_DMACSR_ENABLE)
   drain_dma_buffers(dev, 1);
 }
 spin_unlock_irqrestore(&dev->spinlock, flags);


 if ((status & ADC_DONE_BIT) ||
     ((cmd->flags & CMDF_WAKE_EOS) &&
      (status & ADC_INTR_PENDING_BIT) &&
      (board->layout != LAYOUT_4020))) {
  spin_lock_irqsave(&dev->spinlock, flags);
  if (devpriv->ai_cmd_running) {
   spin_unlock_irqrestore(&dev->spinlock, flags);
   pio_drain_ai_fifo(dev);
  } else {
   spin_unlock_irqrestore(&dev->spinlock, flags);
  }
 }

 if ((cmd->stop_src == TRIG_COUNT &&
      async->scans_done >= cmd->stop_arg) ||
     (cmd->stop_src == TRIG_EXT && (status & ADC_STOP_BIT)))
  async->events |= COMEDI_CB_EOA;

 comedi_handle_events(dev, s);
}
