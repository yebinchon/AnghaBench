
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int read_subdev; scalar_t__ private; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int pcl816_ai_cancel (struct comedi_device*,int ) ;
 int pcl816_free_dma (struct comedi_device*) ;
 int pcl816_reset (struct comedi_device*) ;

__attribute__((used)) static void pcl816_detach(struct comedi_device *dev)
{
 if (dev->private) {
  pcl816_ai_cancel(dev, dev->read_subdev);
  pcl816_reset(dev);
 }
 pcl816_free_dma(dev);
 comedi_legacy_detach(dev);
}
