
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ C6XDIGIO_DATA_REG ;
 int c6xdigio_chk_status (struct comedi_device*,unsigned int) ;
 int outb_p (unsigned int,scalar_t__) ;

__attribute__((used)) static int c6xdigio_write_data(struct comedi_device *dev,
          unsigned int val, unsigned int status)
{
 outb_p(val, dev->iobase + C6XDIGIO_DATA_REG);
 return c6xdigio_chk_status(dev, status);
}
