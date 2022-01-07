
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl812_private {scalar_t__ ai_dma; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {int attached; struct pcl812_private* private; struct comedi_subdevice* read_subdev; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int comedi_handle_events (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl812_ai_clear_eoc (struct comedi_device*) ;
 int pcl812_handle_dma (struct comedi_device*,struct comedi_subdevice*) ;
 int pcl812_handle_eoc (struct comedi_device*,struct comedi_subdevice*) ;

__attribute__((used)) static irqreturn_t pcl812_interrupt(int irq, void *d)
{
 struct comedi_device *dev = d;
 struct comedi_subdevice *s = dev->read_subdev;
 struct pcl812_private *devpriv = dev->private;

 if (!dev->attached) {
  pcl812_ai_clear_eoc(dev);
  return IRQ_HANDLED;
 }

 if (devpriv->ai_dma)
  pcl812_handle_dma(dev, s);
 else
  pcl812_handle_eoc(dev, s);

 pcl812_ai_clear_eoc(dev);

 comedi_handle_events(dev, s);
 return IRQ_HANDLED;
}
