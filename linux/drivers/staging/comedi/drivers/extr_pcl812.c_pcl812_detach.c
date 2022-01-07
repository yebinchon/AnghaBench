
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int dummy; } ;


 int comedi_legacy_detach (struct comedi_device*) ;
 int pcl812_free_dma (struct comedi_device*) ;

__attribute__((used)) static void pcl812_detach(struct comedi_device *dev)
{
 pcl812_free_dma(dev);
 comedi_legacy_detach(dev);
}
