
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int mite_channel_lock; int soft_reg_copy_lock; int window_lock; } ;
struct comedi_device {int dummy; } ;


 int ENOMEM ;
 struct ni_private* comedi_alloc_devpriv (struct comedi_device*,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ni_alloc_private(struct comedi_device *dev)
{
 struct ni_private *devpriv;

 devpriv = comedi_alloc_devpriv(dev, sizeof(*devpriv));
 if (!devpriv)
  return -ENOMEM;

 spin_lock_init(&devpriv->window_lock);
 spin_lock_init(&devpriv->soft_reg_copy_lock);
 spin_lock_init(&devpriv->mite_channel_lock);

 return 0;
}
