
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct labpc_private {int cmd2; int cmd3; int (* write_byte ) (struct comedi_device*,int,int ) ;} ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int spinlock; struct labpc_private* private; } ;


 int CMD2_HWTRIG ;
 int CMD2_PRETRIG ;
 int CMD2_REG ;
 int CMD2_SWTRIG ;
 int CMD3_REG ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct comedi_device*,int,int ) ;
 int stub2 (struct comedi_device*,int,int ) ;

__attribute__((used)) static int labpc_cancel(struct comedi_device *dev, struct comedi_subdevice *s)
{
 struct labpc_private *devpriv = dev->private;
 unsigned long flags;

 spin_lock_irqsave(&dev->spinlock, flags);
 devpriv->cmd2 &= ~(CMD2_SWTRIG | CMD2_HWTRIG | CMD2_PRETRIG);
 devpriv->write_byte(dev, devpriv->cmd2, CMD2_REG);
 spin_unlock_irqrestore(&dev->spinlock, flags);

 devpriv->cmd3 = 0;
 devpriv->write_byte(dev, devpriv->cmd3, CMD3_REG);

 return 0;
}
