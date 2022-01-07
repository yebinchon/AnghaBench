
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ C6XDIGIO_STATUS_REG ;
 int C6XDIGIO_TIME_OUT ;
 int EBUSY ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int c6xdigio_chk_status(struct comedi_device *dev, unsigned long context)
{
 unsigned int status;
 int timeout = 0;

 do {
  status = inb(dev->iobase + C6XDIGIO_STATUS_REG);
  if ((status & 0x80) != context)
   return 0;
  timeout++;
 } while (timeout < C6XDIGIO_TIME_OUT);

 return -EBUSY;
}
