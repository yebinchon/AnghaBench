
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct {size_t chip_index; size_t counter_index; } ;
struct ni_660x_private {int mite_channel_lock; int mite; struct mite_ring*** ring; } ;
struct mite_ring {int dummy; } ;
struct mite_channel {int dir; int channel; } ;
struct comedi_device {int class_dev; struct ni_660x_private* private; } ;
typedef enum comedi_io_direction { ____Placeholder_comedi_io_direction } comedi_io_direction ;


 int EBUSY ;
 int dev_err (int ,char*) ;
 struct mite_channel* mite_request_channel (int ,struct mite_ring*) ;
 int ni_660x_set_dma_channel (struct comedi_device*,int ,struct ni_gpct*) ;
 int ni_tio_set_mite_channel (struct ni_gpct*,struct mite_channel*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ni_660x_request_mite_channel(struct comedi_device *dev,
     struct ni_gpct *counter,
     enum comedi_io_direction direction)
{
 struct ni_660x_private *devpriv = dev->private;
 struct mite_ring *ring;
 struct mite_channel *mite_chan;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 ring = devpriv->ring[counter->chip_index][counter->counter_index];
 mite_chan = mite_request_channel(devpriv->mite, ring);
 if (!mite_chan) {
  spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
  dev_err(dev->class_dev,
   "failed to reserve mite dma channel for counter\n");
  return -EBUSY;
 }
 mite_chan->dir = direction;
 ni_tio_set_mite_channel(counter, mite_chan);
 ni_660x_set_dma_channel(dev, mite_chan->channel, counter);
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
 return 0;
}
