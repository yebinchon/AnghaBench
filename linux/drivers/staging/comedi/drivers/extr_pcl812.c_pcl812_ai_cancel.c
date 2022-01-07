
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcl812_private {int mode_reg_int; TYPE_1__* dma; scalar_t__ ai_dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int pacer; scalar_t__ iobase; struct pcl812_private* private; } ;
struct TYPE_2__ {int chan; } ;


 int PCL812_CTRL_DISABLE_TRIG ;
 scalar_t__ PCL812_CTRL_REG ;
 int comedi_8254_pacer_enable (int ,int,int,int) ;
 int comedi_isadma_disable (int ) ;
 int outb (int,scalar_t__) ;
 int pcl812_ai_clear_eoc (struct comedi_device*) ;

__attribute__((used)) static int pcl812_ai_cancel(struct comedi_device *dev,
       struct comedi_subdevice *s)
{
 struct pcl812_private *devpriv = dev->private;

 if (devpriv->ai_dma)
  comedi_isadma_disable(devpriv->dma->chan);

 outb(devpriv->mode_reg_int | PCL812_CTRL_DISABLE_TRIG,
      dev->iobase + PCL812_CTRL_REG);
 comedi_8254_pacer_enable(dev->pacer, 1, 2, 0);
 pcl812_ai_clear_eoc(dev);
 return 0;
}
