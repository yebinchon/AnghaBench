
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ni_private {int mite_channel_lock; scalar_t__ cdo_mite_chan; } ;
struct comedi_subdevice {int (* cancel ) (struct comedi_device*,struct comedi_subdevice*) ;TYPE_1__* async; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;
struct comedi_cmd {unsigned int start_arg; } ;
struct TYPE_2__ {int prealloc_bufsz; int * inttrig; struct comedi_cmd cmd; } ;


 int EINVAL ;
 int EIO ;
 int NI_M_CDIO_CMD_REG ;
 int NI_M_CDIO_STATUS_CDO_FIFO_FULL ;
 int NI_M_CDIO_STATUS_REG ;
 int NI_M_CDO_CMD_ARM ;
 int NI_M_CDO_CMD_ERR_INT_ENA_SET ;
 int NI_M_CDO_CMD_F_E_INT_ENA_SET ;
 int comedi_buf_read_alloc (struct comedi_subdevice*,int ) ;
 int dev_err (int ,char*) ;
 int mite_dma_arm (scalar_t__) ;
 int mite_prep_dma (scalar_t__,int,int) ;
 int ni_readl (struct comedi_device*,int ) ;
 int ni_writel (struct comedi_device*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct comedi_device*,struct comedi_subdevice*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ni_cdo_inttrig(struct comedi_device *dev,
     struct comedi_subdevice *s,
     unsigned int trig_num)
{
 struct comedi_cmd *cmd = &s->async->cmd;
 const unsigned int timeout = 1000;
 int retval = 0;
 unsigned int i;
 struct ni_private *devpriv = dev->private;
 unsigned long flags;

 if (trig_num != cmd->start_arg)
  return -EINVAL;

 s->async->inttrig = ((void*)0);


 comedi_buf_read_alloc(s, s->async->prealloc_bufsz);

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->cdo_mite_chan) {
  mite_prep_dma(devpriv->cdo_mite_chan, 32, 32);
  mite_dma_arm(devpriv->cdo_mite_chan);
 } else {
  dev_err(dev->class_dev, "BUG: no cdo mite channel?\n");
  retval = -EIO;
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 if (retval < 0)
  return retval;






 for (i = 0; i < timeout; ++i) {
  if (ni_readl(dev, NI_M_CDIO_STATUS_REG) &
      NI_M_CDIO_STATUS_CDO_FIFO_FULL)
   break;
  usleep_range(10, 100);
 }
 if (i == timeout) {
  dev_err(dev->class_dev, "dma failed to fill cdo fifo!\n");
  s->cancel(dev, s);
  return -EIO;
 }
 ni_writel(dev, NI_M_CDO_CMD_ARM |
         NI_M_CDO_CMD_ERR_INT_ENA_SET |
         NI_M_CDO_CMD_F_E_INT_ENA_SET,
    NI_M_CDIO_CMD_REG);
 return retval;
}
