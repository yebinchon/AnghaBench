
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct das16_private_struct {int ctrl_reg; struct comedi_isadma* dma; } ;
struct comedi_subdevice {struct comedi_async* async; } ;
struct comedi_isadma_desc {unsigned int size; int virt_addr; int chan; } ;
struct comedi_isadma {size_t cur_dma; struct comedi_isadma_desc* desc; } ;
struct comedi_device {int spinlock; int class_dev; struct comedi_subdevice* read_subdev; struct das16_private_struct* private; } ;
struct comedi_cmd {scalar_t__ stop_src; scalar_t__ stop_arg; } ;
struct comedi_async {scalar_t__ scans_done; int events; struct comedi_cmd cmd; } ;


 int COMEDI_CB_EOA ;
 int COMEDI_CB_ERROR ;
 int DAS16_CTRL_DMAE ;
 scalar_t__ TRIG_COUNT ;
 int comedi_buf_write_samples (struct comedi_subdevice*,int ,unsigned int) ;
 int comedi_bytes_per_sample (struct comedi_subdevice*) ;
 unsigned int comedi_bytes_to_samples (struct comedi_subdevice*,unsigned int) ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 unsigned int comedi_isadma_disable_on_sample (int ,int ) ;
 int das16_ai_setup_dma (struct comedi_device*,struct comedi_subdevice*,unsigned int) ;
 int dev_err (int ,char*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void das16_interrupt(struct comedi_device *dev)
{
 struct das16_private_struct *devpriv = dev->private;
 struct comedi_subdevice *s = dev->read_subdev;
 struct comedi_async *async = s->async;
 struct comedi_cmd *cmd = &async->cmd;
 struct comedi_isadma *dma = devpriv->dma;
 struct comedi_isadma_desc *desc = &dma->desc[dma->cur_dma];
 unsigned long spin_flags;
 unsigned int residue;
 unsigned int nbytes;
 unsigned int nsamples;

 spin_lock_irqsave(&dev->spinlock, spin_flags);
 if (!(devpriv->ctrl_reg & DAS16_CTRL_DMAE)) {
  spin_unlock_irqrestore(&dev->spinlock, spin_flags);
  return;
 }






 residue = comedi_isadma_disable_on_sample(desc->chan,
        comedi_bytes_per_sample(s));


 if (residue > desc->size) {
  dev_err(dev->class_dev, "residue > transfer size!\n");
  async->events |= COMEDI_CB_ERROR;
  nbytes = 0;
 } else {
  nbytes = desc->size - residue;
 }
 nsamples = comedi_bytes_to_samples(s, nbytes);


 if (nsamples) {
  dma->cur_dma = 1 - dma->cur_dma;
  das16_ai_setup_dma(dev, s, nsamples);
 }

 spin_unlock_irqrestore(&dev->spinlock, spin_flags);

 comedi_buf_write_samples(s, desc->virt_addr, nsamples);

 if (cmd->stop_src == TRIG_COUNT && async->scans_done >= cmd->stop_arg)
  async->events |= COMEDI_CB_EOA;

 comedi_handle_events(dev, s);
}
