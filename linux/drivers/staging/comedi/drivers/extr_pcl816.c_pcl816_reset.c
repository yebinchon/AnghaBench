
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ PCL816_CTRL_REG ;
 scalar_t__ PCL816_DO_DI_LSB_REG ;
 scalar_t__ PCL816_DO_DI_MSB_REG ;
 int outb (int ,scalar_t__) ;
 int pcl816_ai_clear_eoc (struct comedi_device*) ;
 int pcl816_ai_set_chan_range (struct comedi_device*,int ,int ) ;

__attribute__((used)) static void pcl816_reset(struct comedi_device *dev)
{
 outb(0, dev->iobase + PCL816_CTRL_REG);
 pcl816_ai_set_chan_range(dev, 0, 0);
 pcl816_ai_clear_eoc(dev);


 outb(0, dev->iobase + PCL816_DO_DI_LSB_REG);
 outb(0, dev->iobase + PCL816_DO_DI_MSB_REG);
}
