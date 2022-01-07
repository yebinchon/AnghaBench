
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_private {int mite_channel_lock; TYPE_1__* counter_dev; } ;
struct mite_channel {int dummy; } ;
struct comedi_device {struct ni_private* private; } ;
struct TYPE_4__ {struct mite_channel* mite_chan; } ;
struct TYPE_3__ {TYPE_2__* counters; } ;


 int NI_E_DMA_G0_G1_SEL_MASK (unsigned int) ;
 int NI_E_DMA_G0_G1_SEL_REG ;
 int mite_release_channel (struct mite_channel*) ;
 int ni_set_bitfield (struct comedi_device*,int ,int ,int ) ;
 int ni_tio_set_mite_channel (TYPE_2__*,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ni_release_gpct_mite_channel(struct comedi_device *dev,
      unsigned int gpct_index)
{
 struct ni_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&devpriv->mite_channel_lock, flags);
 if (devpriv->counter_dev->counters[gpct_index].mite_chan) {
  struct mite_channel *mite_chan =
      devpriv->counter_dev->counters[gpct_index].mite_chan;

  ni_set_bitfield(dev, NI_E_DMA_G0_G1_SEL_REG,
    NI_E_DMA_G0_G1_SEL_MASK(gpct_index), 0);
  ni_tio_set_mite_channel(&devpriv->
     counter_dev->counters[gpct_index],
     ((void*)0));
  mite_release_channel(mite_chan);
 }
 spin_unlock_irqrestore(&devpriv->mite_channel_lock, flags);
}
