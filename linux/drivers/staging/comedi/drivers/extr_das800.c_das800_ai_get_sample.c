
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS800_LSB ;
 scalar_t__ DAS800_MSB ;
 unsigned int inb (scalar_t__) ;

__attribute__((used)) static unsigned int das800_ai_get_sample(struct comedi_device *dev)
{
 unsigned int lsb = inb(dev->iobase + DAS800_LSB);
 unsigned int msb = inb(dev->iobase + DAS800_MSB);

 return (msb << 8) | lsb;
}
