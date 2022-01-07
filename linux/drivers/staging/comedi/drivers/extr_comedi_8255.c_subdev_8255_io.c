
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_device {scalar_t__ iobase; } ;


 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static int subdev_8255_io(struct comedi_device *dev,
     int dir, int port, int data, unsigned long regbase)
{
 if (dir) {
  outb(data, dev->iobase + regbase + port);
  return 0;
 }
 return inb(dev->iobase + regbase + port);
}
