
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {unsigned int ai_poll_ptr; int ai_dma; struct comedi_isadma* dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_isadma_desc {int virt_addr; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {int spinlock; struct pcl812_private* private; } ;


 int comedi_buf_n_bytes_ready (struct comedi_subdevice*) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 unsigned int comedi_isadma_poll (struct comedi_isadma*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transfer_from_dma_buf (struct comedi_device*,struct comedi_subdevice*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int pcl812_ai_poll(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct pcl812_private *devpriv = dev->private;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc;
 unsigned long flags;
 unsigned int poll;
 int ret;


 if (!devpriv->ai_dma)
  return 0;

 spin_lock_irqsave(&dev->spinlock, flags);

 poll = comedi_isadma_poll(dma);
 poll = comedi_bytes_to_samples(s, poll);
 if (poll > devpriv->ai_poll_ptr) {
  desc = &dma->desc[dma->cur_dma];
  transfer_from_dma_buf(dev, s, desc->virt_addr,
          devpriv->ai_poll_ptr,
          poll - devpriv->ai_poll_ptr);

  devpriv->ai_poll_ptr = poll;

  ret = comedi_buf_n_bytes_ready(s);
 } else {

  ret = 0;
 }

 spin_unlock_irqrestore(&dev->spinlock, flags);

 return ret;
}
