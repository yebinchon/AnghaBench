
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci9118_private {unsigned int ai_add_front; unsigned int ai_add_back; unsigned int ai_act_dmapos; } ;
struct comedi_subdevice {TYPE_1__* async; } ;
struct comedi_device {struct pci9118_private* private; } ;
struct comedi_cmd {unsigned int chanlist_len; } ;
struct TYPE_2__ {struct comedi_cmd cmd; } ;


 int comedi_buf_write_samples (struct comedi_subdevice*,unsigned short*,unsigned int) ;

__attribute__((used)) static void pci9118_ai_dma_xfer(struct comedi_device *dev,
    struct comedi_subdevice *s,
    unsigned short *dma_buffer,
    unsigned int n_raw_samples)
{
 struct pci9118_private *devpriv = dev->private;
 struct comedi_cmd *cmd = &s->async->cmd;
 unsigned int start_pos = devpriv->ai_add_front;
 unsigned int stop_pos = start_pos + cmd->chanlist_len;
 unsigned int span_len = stop_pos + devpriv->ai_add_back;
 unsigned int dma_pos = devpriv->ai_act_dmapos;
 unsigned int x;

 if (span_len == cmd->chanlist_len) {

  comedi_buf_write_samples(s, dma_buffer, n_raw_samples);
  dma_pos += n_raw_samples;
 } else {





  while (n_raw_samples) {
   if (dma_pos < start_pos) {

    x = start_pos - dma_pos;
    if (x > n_raw_samples)
     x = n_raw_samples;
    dma_pos += x;
    n_raw_samples -= x;
    if (!n_raw_samples)
     break;
   }
   if (dma_pos < stop_pos) {

    x = stop_pos - dma_pos;
    if (x > n_raw_samples)
     x = n_raw_samples;
    comedi_buf_write_samples(s, dma_buffer, x);
    dma_pos += x;
    n_raw_samples -= x;
   }

   start_pos += span_len;
   stop_pos += span_len;
  }
 }

 devpriv->ai_act_dmapos = dma_pos % span_len;
}
