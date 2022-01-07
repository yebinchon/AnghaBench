
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pcidas64_private {int ai_fifo_segment_length; scalar_t__ main_iobase; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int class_dev; struct comedi_subdevice* read_subdev; struct pcidas64_private* private; } ;


 scalar_t__ ADC_FIFO_REG ;
 scalar_t__ ADC_READ_PNTR_REG ;
 scalar_t__ ADC_WRITE_PNTR_REG ;
 scalar_t__ PREPOST_REG ;
 int adc_upper_read_ptr_code (int) ;
 int adc_upper_write_ptr_code (int) ;
 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,int) ;
 int comedi_nsamples_left (struct comedi_subdevice*,int) ;
 int dev_err (int ,char*) ;
 int readw (scalar_t__) ;

__attribute__((used)) static void pio_drain_ai_fifo_16(struct comedi_device *dev)
{
 struct pcidas64_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 unsigned int i;
 u16 prepost_bits;
 int read_segment, read_index, write_segment, write_index;
 int num_samples;

 do {

  read_index = readw(devpriv->main_iobase + ADC_READ_PNTR_REG) &
        0x7fff;
  write_index = readw(devpriv->main_iobase + ADC_WRITE_PNTR_REG) &
         0x7fff;







  prepost_bits = readw(devpriv->main_iobase + PREPOST_REG);





  read_segment = adc_upper_read_ptr_code(prepost_bits);
  write_segment = adc_upper_write_ptr_code(prepost_bits);

  if (read_segment != write_segment)
   num_samples =
    devpriv->ai_fifo_segment_length - read_index;
  else
   num_samples = write_index - read_index;
  if (num_samples < 0) {
   dev_err(dev->class_dev,
    "cb_pcidas64: bug! num_samples < 0\n");
   break;
  }

  num_samples = comedi_nsamples_left(s, num_samples);
  if (num_samples == 0)
   break;

  for (i = 0; i < num_samples; i++) {
   unsigned short val;

   val = readw(devpriv->main_iobase + ADC_FIFO_REG);
   comedi_buf_write_samples(s, &val, 1);
  }

 } while (read_segment != write_segment);
}
