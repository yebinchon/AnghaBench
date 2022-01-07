
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 scalar_t__ DAS800_GAIN ;
 unsigned int inb (scalar_t__) ;
 int outb (unsigned int,scalar_t__) ;

__attribute__((used)) static unsigned int das800_ind_read(struct comedi_device *dev, unsigned int reg)
{




 outb(reg, dev->iobase + DAS800_GAIN);
 return inb(dev->iobase + 7);
}
