
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_660x_private {int * io_cfg; int interrupt_lock; int mite_channel_lock; } ;
struct comedi_device {int dummy; } ;


 int ENOMEM ;
 unsigned int NI660X_NUM_PFI_CHANNELS ;
 int NI_660X_PFI_OUTPUT_COUNTER ;
 struct ni_660x_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ni_660x_allocate_private(struct comedi_device *dev)
{
 struct ni_660x_private *devpriv;
 unsigned int i;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 spin_lock_init(&devpriv->mite_channel_lock);
 spin_lock_init(&devpriv->interrupt_lock);
 for (i = 0; i < NI660X_NUM_PFI_CHANNELS; ++i)
  devpriv->io_cfg[i] = NI_660X_PFI_OUTPUT_COUNTER;

 return 0;
}
