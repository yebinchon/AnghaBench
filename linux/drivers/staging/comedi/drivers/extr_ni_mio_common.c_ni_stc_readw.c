
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_private {int window_lock; int mite; scalar_t__ is_m_series; } ;
struct comedi_device {struct ni_private* private; } ;


 int NI_E_STC_WINDOW_ADDR_REG ;
 int NI_E_STC_WINDOW_DATA_REG ;
 unsigned int m_series_stc_read (struct comedi_device*,int) ;
 unsigned int ni_readw (struct comedi_device*,int) ;
 int ni_writew (struct comedi_device*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned int ni_stc_readw(struct comedi_device *dev, int reg)
{
 struct ni_private *devpriv = dev->private;
 unsigned long flags;
 unsigned int val;

 if (devpriv->is_m_series) {
  val = m_series_stc_read(dev, reg);
 } else {
  spin_lock_irqsave(&devpriv->window_lock, flags);
  if (!devpriv->mite && reg < 8) {
   val = ni_readw(dev, reg * 2);
  } else {
   ni_writew(dev, reg, NI_E_STC_WINDOW_ADDR_REG);
   val = ni_readw(dev, NI_E_STC_WINDOW_DATA_REG);
  }
  spin_unlock_irqrestore(&devpriv->window_lock, flags);
 }
 return val;
}
