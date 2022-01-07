
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int window_lock; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI611X_AO_WINDOW_ADDR_REG ;
 int NI611X_AO_WINDOW_DATA_REG ;
 unsigned short ni_readw (struct comedi_device*,int ) ;
 int ni_writew (struct comedi_device*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline unsigned short ni_ao_win_inw(struct comedi_device *dev, int addr)
{
 struct ni_private *devpriv = dev->private;
 unsigned long flags;
 unsigned short data;

 spin_lock_irqsave(&devpriv->window_lock, flags);
 ni_writew(dev, addr, NI611X_AO_WINDOW_ADDR_REG);
 data = ni_readw(dev, NI611X_AO_WINDOW_DATA_REG);
 spin_unlock_irqrestore(&devpriv->window_lock, flags);
 return data;
}
