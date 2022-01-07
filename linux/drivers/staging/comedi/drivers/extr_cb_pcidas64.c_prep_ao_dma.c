
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcidas64_private {scalar_t__ main_iobase; int * ao_bounce_buffer; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct comedi_subdevice* write_subdev; struct pcidas64_private* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct TYPE_2__ {scalar_t__ scans_done; } ;


 scalar_t__ ADC_QUEUE_CLEAR_REG ;
 scalar_t__ DAC_BUFFER_CLEAR_REG ;
 scalar_t__ DAC_FIFO_REG ;
 int DAC_FIFO_SIZE ;
 scalar_t__ TRIG_COUNT ;
 unsigned int cb_pcidas64_ao_fill_buffer (struct comedi_device*,struct comedi_subdevice*,int *,int ) ;
 int dma_start_sync (struct comedi_device*,int ) ;
 int load_ao_dma (struct comedi_device*,struct comedi_cmd const*) ;
 unsigned int load_ao_dma_buffer (struct comedi_device*,struct comedi_cmd const*) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int prep_ao_dma(struct comedi_device *dev, const struct comedi_cmd *cmd)
{
 struct pcidas64_private *devpriv = dev->private;
 struct comedi_subdevice *s = dev->write_subdev;
 unsigned int nsamples;
 unsigned int nbytes;
 int i;





 writew(0, devpriv->main_iobase + ADC_QUEUE_CLEAR_REG);
 writew(0, devpriv->main_iobase + DAC_BUFFER_CLEAR_REG);

 nsamples = cb_pcidas64_ao_fill_buffer(dev, s,
           devpriv->ao_bounce_buffer,
           DAC_FIFO_SIZE);
 if (nsamples == 0)
  return -1;

 for (i = 0; i < nsamples; i++) {
  writew(devpriv->ao_bounce_buffer[i],
         devpriv->main_iobase + DAC_FIFO_REG);
 }

 if (cmd->stop_src == TRIG_COUNT &&
     s->async->scans_done >= cmd->stop_arg)
  return 0;

 nbytes = load_ao_dma_buffer(dev, cmd);
 if (nbytes == 0)
  return -1;
 load_ao_dma(dev, cmd);

 dma_start_sync(dev, 0);

 return 0;
}
