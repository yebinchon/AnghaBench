
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {int class_dev; scalar_t__ iobase; } ;


 unsigned int DAQP_STATUS_EVENTS ;
 scalar_t__ DAQP_STATUS_REG ;
 int EBUSY ;
 int dev_err (int ,char*) ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int daqp_clear_events(struct comedi_device *dev, int loops)
{
 unsigned int status;





 while (--loops) {
  status = inb(dev->iobase + DAQP_STATUS_REG);
  if ((status & DAQP_STATUS_EVENTS) == 0)
   return 0;
 }
 dev_err(dev->class_dev, "couldn't clear events in status register\n");
 return -EBUSY;
}
