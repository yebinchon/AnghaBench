
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcl818_private {int dummy; } ;
struct comedi_device {int read_subdev; struct pcl818_private* private; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int pcl818_ai_cancel (struct comedi_device*,int ) ;
 int pcl818_free_dma (struct comedi_device*) ;
 int pcl818_reset (struct comedi_device*) ;

__attribute__((used)) static void pcl818_detach(struct comedi_device *dev)
{
 struct pcl818_private *devpriv = dev->private;

 if (devpriv) {
  pcl818_ai_cancel(dev, dev->read_subdev);
  pcl818_reset(dev);
 }
 pcl818_free_dma(dev);
 comedi_legacy_detach(dev);
}
