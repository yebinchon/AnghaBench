
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite_channel_lock; scalar_t__ ai_mite_chan; } ;
struct comedi_device {int class_dev; struct ni_private* private; } ;


 int NISTC_AI_STATUS1_FIFO_E ;
 int NISTC_AI_STATUS1_REG ;
 int dev_err (int ,char*,...) ;
 scalar_t__ mite_bytes_in_transit (scalar_t__) ;
 int ni_stc_readw (struct comedi_device*,int ) ;
 int ni_sync_ai_dma (struct comedi_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int ni_ai_drain_dma(struct comedi_device *dev)
{
 struct ni_private *devpriv = dev->private;
 int i;
 static const int timeout = 10000;
 unsigned long flags;
 int retval = 0;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->ai_mite_chan) {
  for (i = 0; i < timeout; i++) {
   if ((ni_stc_readw(dev, NISTC_AI_STATUS1_REG) &
        NISTC_AI_STATUS1_FIFO_E) &&
       mite_bytes_in_transit(devpriv->ai_mite_chan) == 0)
    break;
   udelay(5);
  }
  if (i == timeout) {
   dev_err(dev->class_dev, "timed out\n");
   dev_err(dev->class_dev,
    "mite_bytes_in_transit=%i, AI_Status1_Register=0x%x\n",
    mite_bytes_in_transit(devpriv->ai_mite_chan),
    ni_stc_readw(dev, NISTC_AI_STATUS1_REG));
   retval = -1;
  }
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);

 ni_sync_ai_dma(dev);

 return retval;
}
