
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct pcidas64_private {int adc_control1_bits; int hw_config_bits; int intr_enable_bits; scalar_t__ main_iobase; int dac_control1_bits; int fifo_size_bits; } ;
struct pcidas64_board {scalar_t__ layout; TYPE_1__* ai_fifo; } ;
struct comedi_device {int spinlock; struct pcidas64_private* private; struct pcidas64_board* board_ptr; } ;
struct TYPE_2__ {int max_segment_length; } ;


 scalar_t__ ADC_CONTROL1_REG ;
 int ADC_QUEUE_CONFIG_BIT ;
 scalar_t__ ADC_SAMPLE_INTERVAL_UPPER_REG ;
 scalar_t__ CALIBRATION_REG ;
 int DAC_FIFO_BITS ;
 int DAC_OUTPUT_ENABLE_BIT ;
 scalar_t__ DAQ_SYNC_REG ;
 int DMA_CH_SELECT_BIT ;
 int EN_DAC_DONE_INTR_BIT ;
 int EN_DAC_UNDERRUN_BIT ;
 scalar_t__ HW_CONFIG_REG ;
 int INTERNAL_CLOCK_4020_BITS ;
 scalar_t__ INTR_ENABLE_REG ;
 scalar_t__ LAYOUT_4020 ;
 int SLOW_DAC_BIT ;
 int disable_ai_pacing (struct comedi_device*) ;
 int set_ai_fifo_segment_length (struct comedi_device*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void init_stc_registers(struct comedi_device *dev)
{
 const struct pcidas64_board *board = dev->board_ptr;
 struct pcidas64_private *devpriv = dev->private;
 u16 bits;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);





 if (1)
  devpriv->adc_control1_bits |= ADC_QUEUE_CONFIG_BIT;
 writew(devpriv->adc_control1_bits,
        devpriv->main_iobase + ADC_CONTROL1_REG);


 writew(0xff, devpriv->main_iobase + ADC_SAMPLE_INTERVAL_UPPER_REG);

 bits = SLOW_DAC_BIT | DMA_CH_SELECT_BIT;
 if (board->layout == LAYOUT_4020)
  bits |= INTERNAL_CLOCK_4020_BITS;
 devpriv->hw_config_bits |= bits;
 writew(devpriv->hw_config_bits,
        devpriv->main_iobase + HW_CONFIG_REG);

 writew(0, devpriv->main_iobase + DAQ_SYNC_REG);
 writew(0, devpriv->main_iobase + CALIBRATION_REG);

 spin_unlock_irqrestore(&dev->spinlock, flags);


 devpriv->fifo_size_bits |= DAC_FIFO_BITS;
 set_ai_fifo_segment_length(dev, board->ai_fifo->max_segment_length);

 devpriv->dac_control1_bits = DAC_OUTPUT_ENABLE_BIT;
 devpriv->intr_enable_bits =

  EN_DAC_DONE_INTR_BIT | EN_DAC_UNDERRUN_BIT;
 writew(devpriv->intr_enable_bits,
        devpriv->main_iobase + INTR_ENABLE_REG);

 disable_ai_pacing(dev);
}
