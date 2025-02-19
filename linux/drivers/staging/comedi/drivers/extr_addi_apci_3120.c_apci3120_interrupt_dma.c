
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_device {int class_dev; struct apci3120_private* private; } ;
struct comedi_cmd {int flags; scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {int events; scalar_t__ scans_done; struct comedi_cmd cmd; } ;
struct apci3120_private {size_t cur_dmabuf; struct apci3120_dmabuf* dmabuf; scalar_t__ use_double_buffer; scalar_t__ amcc; } ;
struct apci3120_dmabuf {unsigned int use_size; int virt; } ;


 scalar_t__ AMCC_OP_REG_MWTC ;
 int CMDF_WAKE_EOS ;
 int COMEDI_CB_CANCEL_MASK ;
 int COMEDI_CB_EOS ;
 int COMEDI_CB_ERROR ;
 scalar_t__ TRIG_COUNT ;
 int apci3120_init_dma (struct comedi_device*,struct apci3120_dmabuf*) ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 int dev_err (int ,char*) ;
 unsigned int inl (scalar_t__) ;

__attribute__((used)) static void apci3120_interrupt_dma(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct apci3120_private *devpriv = dev->private;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 struct apci3120_dmabuf *dmabuf;
 unsigned int nbytes;
 unsigned int nsamples;

 dmabuf = &devpriv->dmabuf[devpriv->cur_dmabuf];

 nbytes = dmabuf->use_size - inl(devpriv->amcc + AMCC_OP_REG_MWTC);

 if (nbytes < dmabuf->use_size)
  dev_err(dev->class_dev, "Interrupted DMA transfer!\n");
 if (nbytes & 1) {
  dev_err(dev->class_dev, "Odd count of bytes in DMA ring!\n");
  async->events |= COMEDI_CB_ERROR;
  return;
 }

 nsamples = comedi_bytes_to_samples(s, nbytes);
 if (nsamples) {
  comedi_buf_write_samples(s, dmabuf->virt, nsamples);

  if (!(cmd->flags & CMDF_WAKE_EOS))
   async->events |= COMEDI_CB_EOS;
 }

 if ((async->events & COMEDI_CB_CANCEL_MASK) ||
     (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg))
  return;

 if (devpriv->use_double_buffer) {

  devpriv->cur_dmabuf = !devpriv->cur_dmabuf;
  dmabuf = &devpriv->dmabuf[devpriv->cur_dmabuf];
  apci3120_init_dma(dev, dmabuf);
 } else {

  apci3120_init_dma(dev, dmabuf);
 }
}
