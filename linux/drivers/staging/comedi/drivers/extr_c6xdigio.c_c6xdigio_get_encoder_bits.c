
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ C6XDIGIO_STATUS_REG ;
 int c6xdigio_write_data (struct comedi_device*,unsigned int,unsigned int) ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static int c6xdigio_get_encoder_bits(struct comedi_device *dev,
         unsigned int *bits,
         unsigned int cmd,
         unsigned int status)
{
 unsigned int val;

 val = inb(dev->iobase + C6XDIGIO_STATUS_REG);
 val >>= 3;
 val &= 0x07;

 *bits = val;

 return c6xdigio_write_data(dev, cmd, status);
}
